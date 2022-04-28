<cffunction  name="multiply">
    <cfset arg_count=arrayLen(Arguments)>
    <cfset mul=1>
    <cfloop index="i" from="1" to="#arg_count#" >
        <cfset mul=mul*Arguments[i]>
    </cfloop>
    <cfreturn mul>
</cffunction>

<cfset res1=multiply(1,2)>
<cfset res2=multiply(1,2,3)>
<cfset res3=multiply(1,2,3,4)>
<cfoutput>
    <h1>Calling function with multiply(1,2)  => #res1#</h1>
    <h1>Calling function with multiply(1,2,3) => #res2#</h1>
    <h1>Calling function with multiply(1,2,3,4) =>#res3#</h1>
</cfoutput>






