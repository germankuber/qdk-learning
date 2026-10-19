namespace Kata {
    operation ThreeQuartersPiPhase (q : Qubit) : Unit is Adj + Ctl {
        // Implement your solution here...
        S(q);
        T(q);
    }
}
