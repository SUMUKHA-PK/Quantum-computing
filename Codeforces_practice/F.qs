namespace Solution {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;

    function diff(bits0: Bool[],bits1: Bool[]) : Int    //functions cant change qubit values or call operations
    {
        for(i in 0..Length(bits0)-1)
        {
            if(bits0[i]!=bits1[i])
            {
                return i;
            }
        }
        return -1;
    }

    operation Solve (qs : Qubit[], bits0 : Bool[], bits1 : Bool[]) : Int
    {
        body
        {
            let dif = diff(bits0,bits1);
            let temp = (M(qs[dif])==One);
            if(temp==bits1[dif])
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
    }
}

//Accepted, solutions