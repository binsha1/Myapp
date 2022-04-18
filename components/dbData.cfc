<cfcomponent output="false">

    <cffunction name="getData" access="remote" returnType="struct" returnFormat="json" output="false" />
    <cfargument name="mail_id" type="string" required="true" /> 
    <cfquery name="validate_email" datasource="validate_email"  >
       SELECT * FROM validate_data
    </cfquery>
    <cfreturn validate_email />
    </cffunction>
 <cfcomponent>