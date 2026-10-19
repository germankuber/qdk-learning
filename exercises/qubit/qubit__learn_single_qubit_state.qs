namespace Kata {
    import Std.Diagnostics.*;

    @EntryPoint()
    operation Main() : Unit {
        use q = Qubit();
        let (alpha, beta) = LearnSingleQubitState(q);
        Message($"alpha = {alpha}, beta = {beta}");
        Reset(q);
    }

    operation LearnSingleQubitState(q : Qubit) : (Double, Double) {
        DumpMachine();
return (1.0, 0.0);
    }
}