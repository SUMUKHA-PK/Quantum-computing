namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Set (desired: Result, q1: Qubit) : () // This is similar to a function in C, the parantheses before : are the arguments and he ones after are the return types, here its empty,  i.e void
    {
        body
        {
            let current = M(q1);
            if (desired != current)
            {
                X(q1);
            }
        }
    }
    operation Solve (q : Qubit, sign : Int) : ()
    {
        body
        {
            using (qubits = Qubit[1])
            {
                if(sign==-1)
                {
                    X(q);
                }
                H(q);
            }
        }
    }
}

//Accepted