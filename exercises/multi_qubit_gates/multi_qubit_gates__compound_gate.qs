namespace Kata {
    operation CompoundGate(qs : Qubit[]) : Unit is Adj + Ctl {
        S(qs[0]);
        Y(qs[2]);
    }
}