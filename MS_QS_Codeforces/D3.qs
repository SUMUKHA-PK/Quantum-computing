namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (x : Qubit[], y : Qubit) : ()
    {
        body
        {
           
        }
    }
}
namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (x : Qubit[], y : Qubit) : ()
    {
        body
        {
            mutable count =0;
            for(i in 0..Length(x)-1)
            {
                CNOT(x[i],y);
                if(M(x[i])==One)
                {
                    set count =count +1;
                }        
            }
            if(count==2)
            {
                X(y);
            }
        }
    }
}

