namespace Kata {
    import Std.Math.PI;
    operation PrepareWithComplex(qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[0]);
        H(qs[1]);

        R1(PI() / 2.0, qs[0]);
        R1(PI() / 4.0, qs[1]);
    }
}