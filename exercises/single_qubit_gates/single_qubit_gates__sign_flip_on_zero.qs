namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation SignFlipOnZero (q : Qubit) : Unit is Adj + Ctl {
        // Implement your solution here...
        X(q);
        Z(q);
        X(q);
    }
}
