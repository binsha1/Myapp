<cfcomponent output="false">
<!---  Get YARDS dataset based on SITE  --->
    <cffunction name="getData" access="remote" returntype="query" />
    <cfargument name="mail_id" type="string" required="true" /> 
    <cfquery name="validate_email" datasource="validate_email"  >
        <!--- SQL code here --->
    </cfquery>
    <cfreturn validate_email />
    </cffunction>
 <cfcomponent>