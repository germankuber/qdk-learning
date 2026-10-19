namespace Kata {
    import Std.Convert.IntAsDouble;
    import Std.Math.*;

    operation WState_PowerOfTwo(qs : Qubit[]) : Unit is Adj + Ctl {
        let indexQubits = Length(qs);

        // Start with one excitation
        X(qs[0]);

        for i in 1 .. indexQubits - 1 {
            let remaining = indexQubits - i + 1;

            // Keep amplitude 1 / sqrt(n) on the current qubit
            let theta = 2.0 * ArcCos(
                1.0 / Sqrt(IntAsDouble(remaining))
            );

            // Split the current excitation
            Controlled Ry([qs[i - 1]], (theta, qs[i]));

            // Transfer the excitation to the next qubit
            Controlled X([qs[i]], qs[i - 1]);
        }
    }
}