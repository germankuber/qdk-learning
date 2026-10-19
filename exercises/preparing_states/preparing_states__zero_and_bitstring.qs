namespace Kata {
    operation ZeroAndBitstringSuperposition (qs : Qubit[], bits : Bool[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        H(qs[0]);

        for index in 1 .. Length(bits) - 1{
            let currentBit = bits[index];

            if currentBit{
                Controlled X([qs[0]], qs[index]);
            }
        }
        
    }
}

