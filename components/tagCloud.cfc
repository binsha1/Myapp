<cfcomponent accessors="TRUE">


<cffunction name="init" acceess="public" returntype="struct" > 

<cfargument name="textP"/> 
<cfset words = reMatch("[[:word:]]+", textP) >


<cfset struct_name = StructNew()> 
<cfloop index="i" array="#words#"> 
    <cfif structKeyExists(struct_name, i)> 
    <cfset struct_name[i]++> 
    <cfelse> 
    <cfset struct_name[i] = 1> 
    </cfif> 
</cfloop>
<cfreturn struct_name>
</cffunction>
</cfcomponent>




