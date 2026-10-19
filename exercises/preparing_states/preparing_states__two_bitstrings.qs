namespace Kata {
    operation TwoBitstringSuperposition(
        qs : Qubit[],
        bits1 : Bool[],
        bits2 : Bool[]
    ) : Unit is Adj + Ctl {

        let length = Length(bits1);

        let firstIndexChanged = GetFirstIndexChanged(bits1, bits2);


        for index in 0..length - 1 {

            let currentQubit = qs[index];

            let currentBitOne = bits1[index];

            let currentBitTwo = bits2[index];

            if currentBitOne == currentBitTwo {
                if currentBitOne {
                    X(currentQubit);
                }
            } else {
                if firstIndexChanged == index {
                    H(currentQubit);
                } else {
                    let control = qs[firstIndexChanged];

                    if bits1[firstIndexChanged] != currentBitOne {
                        X(control);

                        Controlled X([control], currentQubit);

                        X(control);
                    } else {
                        Controlled X([control], currentQubit);
                    }

                }
            }
        }

    }

    function GetFirstIndexChanged(bits1 : Bool[], bits2 : Bool[]) : Int {

        for index in 0..Length(bits1) - 1 {
            if bits1[index] != bits2[index] {
                return index;
            }
        }

        return -1;
    }

}