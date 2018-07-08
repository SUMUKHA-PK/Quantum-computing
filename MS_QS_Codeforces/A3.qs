namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    operation Solve (qs : Qubit[], bits0 : Bool[], bits1 : Bool[]) : ()
    {
        body
        {
            mutable j = -1;
            mutable k = -1;
            for(i in 0..Length(bits0)-1)
            {
                if(bits0[i]==false)
                {
                    if(bits1[i]==true)
                    {
                        set j = i;
                        set k = -1;
                    }
                }
                if(bits1[i]==false)
                {
                    if(bits0[i]==true)
                    {
                        set k = i;
                        set j = -1;
                    }
                }
            }
            if(j==-1)
            {
                H(qs[k]);
                for(i in 0..Length(bits0)-1)
                {
                    if(i!=k)
                    {
                        if(bits0[i]==false)
                        {
                            if(bits1[i]==true)
                            {
                                CNOT(qs[k],qs[i]);
                                X(qs[i]);
                            }
                        }
                        if(bits0[i]==true)
                        {
                            if(bits1[i]==false)
                            {
                                CNOT(qs[k],qs[i]);
                            }
                        }
                        if(bits0[i]==true)
                        {
                            if(bits1[i]==true)
                            {
                                CNOT(qs[k],qs[i]);
                                X(qs[i]);
                                CNOT(qs[k],qs[i]);
                            }
                        }
                    }
                }
            }
            if(k==-1)
            {
                H(qs[j]);
                for(i in 0..Length(bits0)-1)
                {
                    if(i!=j)
                    {
                        if(bits0[i]==true)
                        {
                           if(bits1[i]==false)
                           {
                                CNOT(qs[j],qs[i]);
                                X(qs[i]);
                            }
                        }
                        if(bits0[i]==false)
                        {
                            if(bits1[i]==true)
                            {
                                CNOT(qs[j],qs[i]);
                            }
                        }
                        if(bits0[i]==true)
                        {
                           if(bits1[i]==true)
                           {
                                CNOT(qs[j],qs[i]);
                                X(qs[i]);
                                CNOT(qs[j],qs[i]);
                            }
                        }
                    }
                }
            }
        }
    }
}


//Accepted