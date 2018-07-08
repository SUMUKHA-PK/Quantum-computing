namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[]) : Int
    {
        body
        {
            if(M(qs[0])==Zero)
            {
                return 0;
            }
            return 1;
        }
    }
}   