namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
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