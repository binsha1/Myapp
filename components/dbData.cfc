

 <cffunction name="getEmailData" access="remote" returnFormat = "json" output="false"  >
    <cfargument name="u_email" type="string" required="false" > 

  <cfquery name="validate_email" datasource="validate_email"  >
       SELECT * FROM validate_email.validate_data WHERE email_id="#u_email#";
    </cfquery>
  
    <cfreturn validate_email.RecordCount />
    </cffunction>
