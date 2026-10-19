namespace Kata {
    operation PrepareSuperposition(qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[1]);
        Z(qs[1]);
    }
}