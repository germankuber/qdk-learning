namespace Kata {
    operation EntangleQubits (qs : Qubit[]) : Unit is Adj + Ctl {
        // Implement your solution here...
        CNOT(qs[0], qs[1]);

    }
}