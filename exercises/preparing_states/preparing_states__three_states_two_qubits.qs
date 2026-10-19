namespace Kata {
    import Std.Math.PI;
    import Std.Math.Sqrt;
    import Std.Math.ArcCos;
    operation ThreeStates_TwoQubits (qs : Qubit[]) : Unit {
        let theta = 2.0 * ArcCos(Sqrt(2.0 / 3.0));

        Ry(theta, qs[0]);
        X(qs[0]);
        Controlled Ry([qs[0]], (PI() / 2.0, qs[1]));
        X(qs[0]);

    }  
}

