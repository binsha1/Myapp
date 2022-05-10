<cfcomponent>
        <cffunction  name="empFunc" access="remote">        
                <cfargument  name="position" type="string">                
                <cfargument  name="Relocate" type="string">
                <cfargument  name="dollar" type="string" required="no">
                <cfargument  name="cents" type="string" required="no">        
                <cfargument  name="cdate" type="date">
                <cfargument  name="p_url" type="string">
                <cfargument  name="f_name" type="string" >
                <cfargument  name="l_name" type="string">
                <cfargument  name="email" type="string">
                <cfargument  name="phone" type="string" >
                <cfargument  name="doc_file" type="string" >
                
                <cfset local.salary=#arguments.dollar# & '.' & #arguments.cents#>
                <cfset local.thisDir = expandPath("../uploads")>
                <cfif len(trim(#arguments.doc_file#)) >      
                <!---<cfset salary=#arguments.dollar# & '.' & #arguments.cents#>--->        
                        <cffile action="upload" fileField="form.doc_file"  destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
                        <cfset local.file_name=fileupload.serverfile >
                <cfelse>
                        <cfset local.file_name="" >
                </cfif>       
                <cfquery name="subscribe" datasource="subscribe">
                        INSERT INTO subscribe.subscribe(position,relocate,cdate,website,resume,salary,first_name,last_name,email_id,phone)
                        VALUES (
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.position#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.Relocate#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.cdate#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.p_url#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#file_name#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#salary#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.f_name#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.l_name#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.email#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.phone#">) 
                </cfquery>
                <cflocation  url="../cf_task23.cfm?Message=1">
        </cffunction>   
</cfcomponent>
