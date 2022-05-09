 <cffunction name="getEmailData" access="remote" returnFormat = "json" output="false"  >
      <cfargument name="u_email" type="string" required="false" >
      <cfquery name="validate_email" datasource="validate_email"  >
            SELECT * FROM validate_email.validate_data 
            WHERE email_id=<cfqueryparam value="#arguments.u_email#" cfsqltype="CF_SQL_VARCHAR">
      </cfquery>  
      <cfreturn validate_email.RecordCount >
</cffunction>
