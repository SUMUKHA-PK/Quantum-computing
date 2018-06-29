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

    operation Solve (qs : Qubit[], index : Int) : ()
    {
        body
        {
            using(qubits = Qubit[2])
            {
                Set(One,qubits[0]);
                Set(One,qubits[1]);
                if((index == 0)||(index == 2))
                {
                    qs[0]=H(qs[0]);
                    qs[1]=H(qs[1]);
                }
                else if(index == 1)
                {
                    qs[0]=H(qubits[0]);
                    qs[1]=H(qubits[1]);
                }
                else if(index == 3)
                {
                    qs[0]=Z(H(qubits[0]));
                    qs[1]=Z(H(qubits[1]));
                }
            }
        }
    }
}