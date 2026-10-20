namespace Kata {
    operation IsQubitZero(q : Qubit) : Bool {
        // Implement your solution here...
        
        let result = MeasureAllZ([q]);
        if result == Zero{
            return true;
        }
        return false;
    }
}
