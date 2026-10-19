namespace Kata {
    operation PhaseChange (alpha : Double, q : Qubit) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(q);
        R1(alpha, q);
    }
}
