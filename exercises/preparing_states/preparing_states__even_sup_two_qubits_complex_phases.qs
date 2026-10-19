namespace Kata {
    import Std.Diagnostics.DumpMachine;
    import Std.Diagnostics.DumpRegister;
    operation AllBasisVectorsWithComplexPhases_TwoQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[0]);
        H(qs[1]);
        Z(qs[0]);
        S(qs[1]);
        // H(qs[1]);
        // Y(qs[1]);
        DumpMachine();
    }
}
