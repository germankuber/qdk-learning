namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation AllBasisVectorsWithPhaseFlip_TwoQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
       H(qs[0]); 
       H(qs[1]);
       Controlled Z([qs[0]], qs[1]);
       DumpMachine(); 
    }
}
