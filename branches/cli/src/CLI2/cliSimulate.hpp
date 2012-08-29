#ifndef CLI_SIMULATE_HPP_
    #define CLI_SIMULATE_HPP_

    #include "../EXE/deck.hpp"
    #include "../EXE/Logger.hpp"
    #include "../EXE/results.hpp"

    namespace EvaluateDecks {
        namespace CLI {
            /**
             * p, such that B(X >= k   | p,n ) = alpha/2   (a small value)
             * p, such that B(X <  k   | p,n ) = 1-alpha/2 (a large value)
             * p, such that B(X <= k-1 | p,n ) = 1-alpha/2 (a large value)
             * where B is the Binomial distribution.
             */
            double lowerBound(unsigned int const k  //< wins
                             ,unsigned int const n  //< games
                             ,double const gamma    //< confidence level
                             );

            /**
             * p, such that B(X <= k | p,n ) = alpha/2
             * where B is the Binomial distribution.
             */
            double upperBound(unsigned int const k  //< successfull results
                             ,unsigned int const n  //< total tries
                             ,double const gamma    //< confidence level
                             );

            RESULTS simulate(ActiveDeck const & deck1
                             ,ActiveDeck const & deck2
                             ,DeckLogger & attackLogger
                             ,DeckLogger & defenseLogger
                             ,SimulationLogger & simulationLogger
                             ,unsigned int const & numberOfIterations
                             );

        } // namespace CLI
    } // namespace EvaluateDecks
#endif
