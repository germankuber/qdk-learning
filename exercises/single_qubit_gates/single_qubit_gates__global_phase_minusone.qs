namespace Kata {
    operation GlobalPhaseChange (q : Qubit) : Unit is Adj + Ctl {
        // Implement your solution here...
        Z(q);
        Y(q);
        X(q);
    }
}

