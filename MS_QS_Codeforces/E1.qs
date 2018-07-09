namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (N : Int, Uf : ((Qubit[], Qubit) => ())) : Int[]
    {
        body
        {
            mutable b = new Int[N];
            using(register = Qubit[N+1])
            {
                using(qu = Qubit[1])
                {
                    //Uf(register,qu);
                    if(M(register[N])==One)
                    {
                        set b[0] = b[0] + 1;
                    }
                }
            }           
            return b;
        }
    }
}