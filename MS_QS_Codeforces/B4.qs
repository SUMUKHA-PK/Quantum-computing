namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[]) : Int
    {
        body
        {
            H(qs[0]);
            CNOT(qs[0],qs[1]);
            H(qs[0]);
            X(qs[0]);
            X(qs[1]);
            return ResultAsInt([M(qs[1]); M(qs[0])]);
        }
    }
}

//Accepted!