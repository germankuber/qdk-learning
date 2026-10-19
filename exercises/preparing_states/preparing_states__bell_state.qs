namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation BellState (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[0]);
        Controlled X([qs[0]], qs[1]);
        DumpMachine();
        
    }
}

