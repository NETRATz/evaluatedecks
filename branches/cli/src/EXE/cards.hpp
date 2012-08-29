#ifndef CARDS_HPP_
    #define CARDS_HPP_

    #include <set>
    #include <map>
    #include <vector>
    #include <utility>
    #include "deck.hpp"

    #define TAG_ANY			-100500
    #define TAG_BATCHEVAL	100500
    #define TAG_CUSTOM		0
    #define TAG_SOMERAID	-1000
    #define TAG_SOMEMISSION	1000

    #define CARD_MAX_ID				4000 // sizes of storage arrays
    #define MISSION_MAX_ID			400
    #define ACHIEVEMENT_MAX_COUNT	300
    #define RAID_MAX_ID				30
    #define BATTLEGROUND_MAX_ID		20
    #define STEP_MAX_ID				40

    typedef std::map<std::string, UINT> MSUINT;
    typedef std::pair<std::string, UINT> PAIRMSUINT;
    typedef std::vector<std::string> VSTRINGS;
    typedef std::map<std::string, UCHAR> MSKILLS;
    typedef std::pair<std::string, UCHAR> PAIRMSKILLS;
    typedef std::set <UINT> SCID;
    typedef std::map<UINT, UINT> MUUINT;
    typedef std::pair<UINT, UINT> PAIRMUUINT;

    struct DeckIndex;
    typedef std::map<DeckIndex, VSTRINGS> MDECKS;
    typedef std::pair<DeckIndex, VSTRINGS> PAIRMDECKS;
#endif
