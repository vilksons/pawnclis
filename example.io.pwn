/// You don't need to worry about whether native Pawn Code scripts are compatible with Pawn Code SA-MP if you use PawnCLIS. Because PawnCLIS has emphasized this.

#include "a_samp"

main()
    {
    infinity: // pawn label
        print "Hello, World"
    // goto infinity;

    for ( ;; )
        {
        new stamp = tickcount()
        while (tickcount() - stamp < 1000)
            {}
        print "."
        }
    }
