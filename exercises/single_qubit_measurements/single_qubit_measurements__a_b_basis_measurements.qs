namespace Kata {
    operation MeasureInABBasis(alpha : Double, q : Qubit) : Result {
        Rx(-2.0 * alpha, q);

        let result = M(q);

        Rx(2.0 * alpha, q);

        return result;
    }
}
