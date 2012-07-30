
void simulateFromEvalParams(EVAL_PARAMS * const pEvalParams)
{

	//memcpy(buffer,(PVOID)pBuf,BUF_SIZE);
	//printf(buffer);

	bConsoleOutput = false;
	DB.LoadCardXML("cards.xml");
	DB.LoadRaidXML("raids.xml");
	DB.LoadQuestXML("quests.xml");

	MaxTurn = pEvalParams->MaxTurn;

	ActiveDeck X,Y;
	DB.CreateDeck(pEvalParams->AtkDeck,X);
	if (DB.LoadDecks(pEvalParams->DefDeck) == -2) // FNF
		DB.CreateDeck(pEvalParams->DefDeck,Y);
	X.SetOrderMatters(pEvalParams->OrderMatters);

	if (pEvalParams->OrderHeapSize > 0)
	{
		MaxOrderHeapSize = pEvalParams->OrderHeapSize;
		OrderLength = DEFAULT_DECK_SIZE;
	}
	else
		OrderLength = -1;

	memset(&pEvalParams->Result,0,sizeof(RESULTS));
	memset(&pEvalParams->ResultByCard,0,sizeof(RESULT_BY_CARD) * (DEFAULT_DECK_RESERVE_SIZE + 1));	
	memset(&pEvalParams->SkillProcs,0,sizeof(UINT)*CARD_ABILITIES_MAX);
	memset(&pEvalParams->ResultByOrder,0,sizeof(RESULT_BY_ORDER)*DEFAULT_DECK_RESERVE_SIZE);
	memset(&pEvalParams->WildCardIds,0,sizeof(UCHAR)*DEFAULT_DECK_RESERVE_SIZE);
	memset(&pEvalParams->WildCardWins,0,sizeof(UINT)*DEFAULT_DECK_RESERVE_SIZE);
	pEvalParams->FullAmountOfGames = 0;
	AchievementIndex = pEvalParams->AchievementIndex;
	if (AchievementIndex >= 0)
		DB.LoadAchievementXML("achievements.xml");

	time_t t;
	time(&t);
	if (pEvalParams->WildcardId)
	{
		SCID CardPool;
		SCID xCardPool;
		struct more
		{
		  bool operator()(const UINT a, const UINT b) const
		  {
			return a > b;
		  }
		};
		typedef multimap<UINT,UINT, more> MRID;
		typedef pair<UINT,UINT> PRID;
		MRID RID;
		if (pEvalParams->WildFilterSpecific)
		{
			DB.LoadCardList("wildcard\\include.txt",CardPool);
			DB.LoadCardList("wildcard\\exclude.txt",xCardPool);
		}
		MUUINT OwnedCards;
		if (pEvalParams->SkipWildCardsWeDontHave)
		{
			DB.LoadOwnedCards("wildcard\\ownedcards.txt",OwnedCards);
			/*for (MUUINT::iterator mi = OwnedCards.begin();mi!=OwnedCards.end();mi++)
			{
				printf("%d : %d\n",mi->first,mi->second);
			}*/
			// mark all cards in deck as used, except for one wildcard
			bool bWildMarked = false;
			for (VCARDS::iterator vi=X.Deck.begin();vi!=X.Deck.end();vi++)
				if ((vi->GetId() == pEvalParams->WildcardId) && (!bWildMarked))
					bWildMarked = true;	// skip only one wildcard
				else
				{
					MUUINT::iterator mi = OwnedCards.find(vi->GetId());
					if (mi != OwnedCards.end())
					{
						mi->second--; // don't check whether we have enough cards or not
					}
					// else DON'T CHANGE ANYTHING IF WE DON'T HAVE BASIC CARDS
				}
		}
		if (pEvalParams->WildcardId < 0)
		{
			// remove all non-commander cards from pool
			for (SCID::iterator si = CardPool.begin(); si != CardPool.end(); si++)
			{
				while ((si != CardPool.end()) && (DB.GetCard(*si).GetType() != TYPE_COMMANDER))
					si = CardPool.erase(si);
				if (si == CardPool.end())
					break;
			}
			// commander
			for (UINT icmd=1000;icmd<2000;icmd++)
			{
				Card c = DB.GetCard(icmd);
				if (c.IsCard() && c.GetSet())
				{
					UCHAR ifilter = 0;
					for (UINT k=pEvalParams->WildFilterRarity;k;k/=10)
						if (c.GetRarity()+1 == k%10) // need an offset here since Common = 0
						{
							ifilter++;
							break;
						}
					for (UINT k=pEvalParams->WildFilterFaction;k;k/=10)
						if (c.GetFaction() == k%10)
						{
							ifilter++;
							break;
						}
					if (ifilter >= 2)
						CardPool.insert(icmd);
				}
			}
		}
		else
		{
			CardPool.insert(pEvalParams->WildcardId); // include original card
			// remove all commander cards from pool
			for (SCID::iterator si = CardPool.begin(); si != CardPool.end(); si++)
				while ((si != CardPool.end()) && (DB.GetCard(*si).GetType() == TYPE_COMMANDER))
					si = CardPool.erase(si);
			// card in deck
			for (VCARDS::iterator vi=X.Deck.begin();vi!=X.Deck.end();vi++)
				if (vi->GetId() == pEvalParams->WildcardId)
				{
					vi = X.Deck.erase(vi); // remove that card
					break; // just replace one
				}
			for (UINT icard=0;icard<3000;icard++)
			{
				if ((icard >= 1000) && (icard < 2000)) // commanders
					continue;

				Card c = DB.GetCard(icard);
				if (c.IsCard() && c.GetSet())
				{
					UCHAR ifilter = 0;
					for (UINT k=pEvalParams->WildFilterType;k;k/=10)
						if (c.GetType() == k%10)
						{
							ifilter++;
							break;
						}
					for (UINT k=pEvalParams->WildFilterRarity;k;k/=10)
						if (c.GetRarity() + 1 == k%10) // need an offset here since Common = 0
						{
							ifilter++;
							break;
						}
					for (UINT k=pEvalParams->WildFilterFaction;k;k/=10)
						if (c.GetFaction() == k%10)
						{
							ifilter++;
							break;
						}
					if (ifilter >= 3)
						CardPool.insert(icard);
				}
			}
		}
		// apply exclude filter
		for (SCID::iterator xi = xCardPool.begin(); xi != xCardPool.end(); xi++)
		{
			SCID::iterator si = CardPool.find(*xi);
			if (si != CardPool.end())
				CardPool.erase(si);
		}
		if (CardPool.empty())
			pEvalParams->WildcardId = -1; // tell API that there were no cards in filter

		UINT BestCard = 0;
		for (SCID::iterator si=CardPool.begin();si!=CardPool.end();si++)
		{
			if (pEvalParams->SkipWildCardsWeDontHave && (!OwnedCards.empty()))
			{
				MUUINT::iterator mi = OwnedCards.find(*si);
				if (mi != OwnedCards.end())
				{
					if (mi->second < 1)
						continue; // we don't have enough cards of a type
				}
				else continue; // we don't have this card
			}
			ActiveDeck x(X);
			if (pEvalParams->WildcardId < 0)
				x.Commander = PlayedCard(&DB.GetCard(*si));
			else
				x.Deck.push_back(&DB.GetCard(*si));
			if (!x.IsValid())
				continue;
			RESULTS lresult;
			RESULT_BY_CARD lrbc[DEFAULT_DECK_RESERVE_SIZE+1];
			//p = find_upper_bound_on_p(trials, successes, 0.01)
			EvaluateInThreads(pEvalParams->Seed,x,Y,pEvalParams->RaidID,pEvalParams->QuestID,lresult,lrbc,pEvalParams->State,pEvalParams->GamesPerThread,pEvalParams->Threads,pEvalParams->Surge,pEvalParams->TournamentMode,pEvalParams->Req,pEvalParams->SkillProcs,pEvalParams->Annihilator,pEvalParams->SurrenderAtLoss);
			if (lresult.Win > pEvalParams->Result.Win)
			{
				pEvalParams->Result = lresult;
				memcpy(pEvalParams->ResultByCard,lrbc,sizeof(lrbc));
				BestCard = *si;
			}
			RID.insert(PRID(lresult.Win,*si));
			pEvalParams->FullAmountOfGames += lresult.Games;
		}
		UCHAR i = 0;
		// second pass
		if (pEvalParams->SecondPassMultiplier > 0)
		{
			for (MRID::iterator mi = RID.begin(); (mi != RID.end()) && (i < DEFAULT_DECK_RESERVE_SIZE+1 /* amount of wildcards for extended test */);)
			{
				ActiveDeck x(X);
				if (pEvalParams->WildcardId < 0)
					x.Commander = PlayedCard(&DB.GetCard(mi->second));
				else
					x.Deck.push_back(&DB.GetCard(mi->second));
				RESULTS lresult;
				RESULT_BY_CARD lrbc[DEFAULT_DECK_RESERVE_SIZE+1];
				EvaluateInThreads(pEvalParams->Seed,x,Y,pEvalParams->RaidID,pEvalParams->QuestID,lresult,lrbc,pEvalParams->State,pEvalParams->SecondPassMultiplier * pEvalParams->GamesPerThread,pEvalParams->Threads,pEvalParams->Surge,pEvalParams->TournamentMode,pEvalParams->Req,pEvalParams->SkillProcs,pEvalParams->Annihilator,pEvalParams->SurrenderAtLoss);
				if (lresult.Win > pEvalParams->Result.Win)
				{
					pEvalParams->Result = lresult;
					memcpy(pEvalParams->ResultByCard,lrbc,sizeof(lrbc));
					BestCard = mi->second;
				}
				RID.insert(PRID(lresult.Win,mi->second));
				pEvalParams->FullAmountOfGames += lresult.Games;
				mi = RID.erase(mi); // insert then erase?
				i++;
			}
			i = 0;
		}
		if (BestCard)
			pEvalParams->WildcardId = BestCard;
		for (MRID::iterator mi = RID.begin(); (mi != RID.end()) && (i < DEFAULT_DECK_RESERVE_SIZE /* amount of wildcards to dump */); mi++)
			if (mi->second != BestCard)
			{
				pEvalParams->WildCardWins[i] = mi->first;
				pEvalParams->WildCardIds[i] = mi->second;
				i++;
			}
	}
	else
	{
		// simple eval
		EvaluateInThreads(pEvalParams->Seed,X,Y,pEvalParams->RaidID,pEvalParams->QuestID,pEvalParams->Result,pEvalParams->ResultByCard,pEvalParams->State,pEvalParams->GamesPerThread,pEvalParams->Threads,pEvalParams->Surge,pEvalParams->TournamentMode,pEvalParams->Req,pEvalParams->SkillProcs,pEvalParams->Annihilator,pEvalParams->SurrenderAtLoss);
		pEvalParams->FullAmountOfGames += pEvalParams->Result.Games;
	}
	if (OrderLength > 0)
	{
		// reorder
		typedef map<PICK_STATS, string> MPSS;
		typedef pair<PICK_STATS, string> PAIRPSS;
		MPSS OrderByStats;
		for (MSPS::iterator mi = StatsByOrder.begin(); mi != StatsByOrder.end(); mi++)
			OrderByStats.insert(PAIRPSS(mi->second,mi->first));
		UCHAR k=0;
		for (MPSS::iterator mi = OrderByStats.end();;mi--)
		{
			if (mi != OrderByStats.end())
			{
				strcpy(pEvalParams->ResultByOrder[k].CardOrder,mi->second.c_str());
				pEvalParams->ResultByOrder[k].result = mi->first;

				ActiveDeck x(mi->second.c_str(),DB.GetPointer());
				for (UCHAR i=0;i<x.Deck.size();i++)
					pEvalParams->ResultByOrder[k].CardIDs[i] = x.Deck[i].GetId(); 
				//printf("%3d: %s	%.3f	%d \\ %d \\ %d\n",k,mi->second.c_str(),mi->first.Ratio(),mi->first.Win,mi->first.Stall,mi->first.Loss);
			}
			else
				if (k)
					break;
			k++;
			if (k > 10)
				break;
		}
		OrderByStats.clear();
		StatsByOrder.clear();
	}
	time_t t1;
	time(&t1);
	pEvalParams->Seconds = (DWORD)t1-t;
	printf("Finished in %d sec\n",t1-t);
}
