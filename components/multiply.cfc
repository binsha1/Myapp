<cfcomponent>
    <cffunction  name="multiply" access="public" output="true" >
        <cfset local.mul=1>
        <cfloop index="i" from=1 to="#ArrayLen(Arguments)#">
            <cfset local.mul=local.mul * Arguments[i]>
        </cfloop>       
        <cfreturn local.mul>
    </cffunction>
</cfcomponent>