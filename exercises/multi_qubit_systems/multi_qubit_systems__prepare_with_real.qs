namespace Kata {
    operation PrepareWithReal(qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[0]);
        H(qs[1]);
        Z(qs[1]);
    }
}