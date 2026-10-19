namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation EvenOddNumbersSuperposition(qs : Qubit[], isEven : Bool) : Unit is Adj + Ctl {
        // Implement your solution here...


        for index in 0..Length(qs) - 2 {
            H(qs[index]);
        }

        if not isEven {
            X(qs[Length(qs) - 1]);
        }
    }
}

