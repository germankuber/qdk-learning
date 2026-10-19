namespace Kata {
    import Std.Convert.IntAsDouble;
    import Std.Math.*;

    operation WState_Arbitrary(qs : Qubit[]) : Unit {
        let totalQubits = Length(qs);

        // Start with one excitation
        X(qs[0]);

        for qubitIndex in 1 .. totalQubits - 1 {

            let controlQubit = qs[qubitIndex - 1];
            
            let targetQubit = qs[qubitIndex];

            let remainingQubits = totalQubits - qubitIndex + 1;
            let remainingQubitsAsDouble = IntAsDouble(remainingQubits);

            // Calculate the rotation angle
            let targetAmplitude = 1.0 / Sqrt(remainingQubitsAsDouble);
            let halfAngle = ArcCos(targetAmplitude);
            let rotationAngle = 2.0 * halfAngle;

            // Split the amplitude
            Controlled Ry([controlQubit], (rotationAngle, targetQubit));

            // Transfer the excitation
            Controlled X([targetQubit], controlQubit);
        }
    }
}