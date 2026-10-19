namespace Kata {
    operation AmplitudeChange (alpha : Double, q : Qubit) : Unit is Adj + Ctl {
        // Implement your solution here...
       Ry(2.0 * alpha, q); 
    }
}

