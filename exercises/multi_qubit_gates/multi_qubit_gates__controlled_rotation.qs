namespace Kata {
    operation ControlledRotation(qs : Qubit[], theta : Double)
    : Unit is Adj + Ctl {
        // Implement your solution here...
        Controlled Rx([qs[0]], (theta, qs[1]));
    }
}