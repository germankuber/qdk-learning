namespace Kata {
    import Std.Diagnostics.DumpMachine;
    import Std.Arrays.*;

    operation GHZ_State(qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[0]);
        Message($"{Length(qs)}");
        for i in 0..Length(qs) - 2 {
            let index  = i + 1;
            let controlBit = qs[index];

            Controlled X([qs[index - 1]], qs[index]);

        }
        
    }
}
