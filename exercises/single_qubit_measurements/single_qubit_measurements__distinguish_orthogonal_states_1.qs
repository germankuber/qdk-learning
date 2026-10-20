namespace Kata {
    import Std.Math.*;

    operation IsQubitPsiPlus(q : Qubit) : Bool {
        let theta = 2.0 * ArcTan2(0.8, 0.6);

        Ry(-theta, q);

        return M(q) == Zero;
    }
}
