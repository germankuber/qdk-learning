namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation AllStatesWithParitySuperposition(qs : Qubit[], parity : Int) : Unit is Adj + Ctl {
        let lastQubit = qs[Length(qs) - 1];

        // Prepare the superposition.
        for index in 0..Length(qs) - 2 {
            H(qs[index]);
        }

        // Compute the parity.
        for index in 0..Length(qs) - 2 {
            Controlled X([qs[index]], lastQubit);
        }

        // Switch from even to odd parity if requested.
        if parity == 1 {
            X(lastQubit);
        }
    }
}
