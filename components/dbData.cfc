<cfcomponent >

    <cffunction name="getEmailData" access="public" returnType="boolean"  />
    <cfargument name="u_email" type="string" required="true" /> 

  <cfquery name="validate_email" datasource="validate_email"  >
       SELECT * FROM validate_email.validate_data WHERE email_id="#arguments.u_email#"
    </cfquery>
  
    <cfreturn true />
    </cffunction>
 <cfcomponent>