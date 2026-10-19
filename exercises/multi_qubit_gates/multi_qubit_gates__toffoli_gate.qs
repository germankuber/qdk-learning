namespace Kata {
    operation ToffoliGate (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        Controlled X([qs[0], qs[1]], qs[2]);
        
    }
}