namespace Kata {
    import Std.Diagnostics.DumpMachine;
    operation AllBellStates(qs : Qubit[], index : Int) : Unit is Adj + Ctl {
        // Implement your solution here...

        H(qs[0]);

        if index == 0 {
            Controlled X([qs[0]], qs[1]);
        } elif index == 1 {
            Controlled X([qs[0]], qs[1]);
            Z(qs[1]);
        } elif index == 2 {
            Controlled X([qs[0]], qs[1]);
            X(qs[0]);
        } elif index == 3 {
            Controlled X([qs[0]], qs[1]);
            X(qs[0]);
            Z(qs[0]);
        }
    }
}

