namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[]) : Int
    {
        body
        {
            CNOT(qs[0],qs[1]);
            H(qs[0]);
            return ResultAsInt([M(qs[0]);M(qs[1])]);
        }
    }
}

//Actual answer is return ResultAsInt([M(qs[1]);M(qs[0])]); idk why they have set  it so.
//Accepted with theirs.
