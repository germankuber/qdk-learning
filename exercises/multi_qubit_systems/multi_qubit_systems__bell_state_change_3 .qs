namespace Kata {
    operation BellStateChange3(qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        Z(qs[1]);
        X(qs[1]);
    }
}