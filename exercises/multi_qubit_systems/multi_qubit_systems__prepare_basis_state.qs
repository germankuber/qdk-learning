namespace Kata {
    operation PrepareBasisState(qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        X(qs[0]);
        X(qs[1]);

    }
}