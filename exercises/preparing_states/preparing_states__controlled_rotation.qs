namespace Kata {
    import Std.Math.PI;
    import Std.Math.Sqrt;
    import Std.Math.ArcCos;
    operation ControlledRotation(qs : Qubit[]) : Unit is Adj + Ctl {
        Ry(PI() / 2.0, qs[0]);
        Controlled Ry([qs[0]], (PI() / 2.0, qs[1]));
    }
}

