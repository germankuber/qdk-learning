namespace Kata {
    operation BellStateChange1 (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        Z(qs[1]);
    }
}