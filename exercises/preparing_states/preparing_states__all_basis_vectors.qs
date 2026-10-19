namespace Kata {
    operation AllBasisVectorsSuperposition (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...

        for index in 0 .. Length(qs) - 1{
            let currentQubit = qs[index];
            H(currentQubit);
        }
    }
}

