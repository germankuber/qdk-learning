namespace Kata {
    import Std.Diagnostics.DumpMachine;

    operation FourBitstringSuperposition(qs : Qubit[], bits : Bool[][]) : Unit {
        use ancillas = Qubit[2];

        H(ancillas[0]);
        H(ancillas[1]);

        // STEP 1: Prepare the four target bitstrings.
        for bitstringIndex in 0..Length(bits) - 1 {
            PrepareAncillaControls(ancillas, bitstringIndex);

            for qubitIndex in 0..Length(qs) - 1 {
                if bits[bitstringIndex][qubitIndex] {
                    Controlled X(ancillas, qs[qubitIndex]);
                }
            }

            // Restore the original ancilla control configuration.
            PrepareAncillaControls(ancillas, bitstringIndex);
        }

        // STEP 2: Uncompute the ancillas using the target qubits.
        for bitstringIndex in 0..Length(bits) - 1 {
            let bitstring = bits[bitstringIndex];

            // Transform the selected bitstring into all ones.
            PrepareTargetControls(qs, bitstring);

            // Clear the corresponding ancilla bits.
            CleanAncillaControls(ancillas, qs, bitstringIndex);

            // Restore the target qubits.
            PrepareTargetControls(qs, bitstring);
        }

    }

    operation PrepareAncillaControls(
        ancillas : Qubit[],
        bitstringIndex : Int
    ) : Unit {
        // Convert the classical index into a binary control pattern.
        for ancillaIndex in 0..Length(ancillas) - 1 {
            let bitPosition = Length(ancillas) - 1 - ancillaIndex;
            let bitValue = (bitstringIndex >>> bitPosition) &&& 1;

            // Flip controls corresponding to zero bits.
            if bitValue == 0 {
                X(ancillas[ancillaIndex]);
            }
        }
    }

    operation PrepareTargetControls(
        qs : Qubit[],
        bitstring : Bool[]
    ) : Unit {
        // Flip zero bits so the selected state becomes all ones.
        for qubitIndex in 0..Length(qs) - 1 {
            if not bitstring[qubitIndex] {
                X(qs[qubitIndex]);
            }
        }
    }

    operation CleanAncillaControls(
        ancillas : Qubit[],
        controls : Qubit[],
        bitstringIndex : Int
    ) : Unit {
        // Extract each bit of the classical index.
        for ancillaIndex in 0..Length(ancillas) - 1 {
            let bitPosition = Length(ancillas) - 1 - ancillaIndex;
            let bitValue = (bitstringIndex >>> bitPosition) &&& 1;

            // Clear only the ancilla bits corresponding to ones.
            if bitValue == 1 {
                Controlled X(controls, ancillas[ancillaIndex]);
            }
        }
    }
}