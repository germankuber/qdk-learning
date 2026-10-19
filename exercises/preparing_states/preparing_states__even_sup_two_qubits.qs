namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation AllBasisVectors_TwoQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[0]);
        H(qs[1]);
        DumpMachine();
    }
}
