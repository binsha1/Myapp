<cfscript> 
    function multiply()
        { 
            var arg_count = ArrayLen(Arguments); 
            var mul =1; 
            var i = 0; 
            for( i = 1 ; i LTE arg_count; i = i + 1 ) 
            { 
                mul = mul* Arguments[i]; 
            } 
            return mul;
        } 
</cfscript>
<cfset res1=multiply(1,2)>
<cfset res2=multiply(1,2,3)>
<cfset res3=multiply(1,2,3,4)>
<cfoutput>
    <h1>Calling function with multiply(1,2)  => #res1#</h1>
    <h1>Calling function with multiply(1,2,3) => #res2#</h1>
    <h1>Calling function with multiply(1,2,3,4) =>#res3#</h1>
</cfoutput>






