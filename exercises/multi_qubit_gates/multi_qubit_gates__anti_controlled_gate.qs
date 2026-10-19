namespace Kata {
    operation AntiControlledGate (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        X(qs[0]);
        CNOT(qs[0], qs[1]);

        X(qs[0]);
    }
}