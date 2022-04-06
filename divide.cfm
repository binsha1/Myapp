<h1>Output</h1>

<cfset numbers=form.Number>


<cfloop list="#numbers#" index="i" >


    <cfif i mod 3>            
            <cfcontinue>
        </cfif>
        <cfoutput>
            #i#
            </cfoutput>
</cfloop>