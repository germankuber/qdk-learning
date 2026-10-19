namespace Kata {
    import Std.Math.*;

    operation PrepareArbitraryState(
        alpha : Double,
        beta : Double,
        theta : Double,
        q : Qubit
    ) : Unit is Adj + Ctl {
        let angle = 2.0 * ArcTan2(beta, alpha);
        Ry(angle, q);
        R1(theta, q);
    }
}
