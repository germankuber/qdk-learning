namespace Kata {
    operation IsQubitMinus(q : Qubit) : Bool {
        // Implement your solution here...

        let result = Measure([PauliX], [q]);

        if result == One{
            return true
        }
        return false;
    }
}
