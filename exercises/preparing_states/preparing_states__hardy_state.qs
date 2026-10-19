
namespace Kata {
    import Std.Math.*;

    operation Hardy_State(qs : Qubit[]) : Unit {
        // Initial state:
        // |ψ⟩ = |00⟩

        // Step 1: Split probabilities between the first qubit states.
        let theta = 2.0 * ArcCos(Sqrt(5.0 / 6.0));
        Ry(theta, qs[0]);

        // |ψ⟩ = √(5/6)|00⟩ + √(1/6)|10⟩

        // Step 2: Prepare a zero-controlled Ry.
        let alpha = 2.0 * ArcCos(Sqrt(9.0 / 10.0));
        X(qs[0]);

        // |ψ⟩ = √(5/6)|10⟩ + √(1/6)|00⟩

        Controlled Ry([qs[0]], (alpha, qs[1]));

        // |ψ⟩ = 3/√12|10⟩ + 1/√12|11⟩ + 1/√6|00⟩

        X(qs[0]);

        // |ψ⟩ = 3/√12|00⟩ + 1/√12|01⟩ + 1/√6|10⟩

        // Step 3: Split |10⟩ into |10⟩ and |11⟩.
        Controlled Ry([qs[0]], (PI() / 2.0, qs[1]));

        // Final state:
        // |ψ⟩ = 1/√12(3|00⟩ + |01⟩ + |10⟩ + |11⟩)
    }
}
