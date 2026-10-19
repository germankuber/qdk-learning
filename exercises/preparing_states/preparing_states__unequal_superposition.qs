namespace Kata {
    operation UnequalSuperposition(q : Qubit, alpha : Double) : Unit {
        // Implement your solution here...
        let angle = 2.0 * alpha;
        Ry(angle, q);

    }
}
