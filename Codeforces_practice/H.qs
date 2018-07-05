namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    operation Solve (x : Qubit[], y : Qubit) : ()
    {
        body
        {
            //y is always initially zero as it is a qubit
            for(i in 0..Length(x)-1)
            {
                CNOT(x[i],y);
            }                    
        }
    }
}

//Accepted