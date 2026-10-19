namespace Kata {
    operation RelativePhaseMinusOne (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        CZ(qs[0], qs[1]);

    }
}