namespace Kata {
    import Std.Math.*;

    operation PrepareRotatedState(alpha : Double, beta : Double, q : Qubit) : Unit is Adj + Ctl {
        // Implement your solution here...
       let theta = 2.0 * ArcTan2(beta, alpha);
        Rx(theta, q);
    }
}
