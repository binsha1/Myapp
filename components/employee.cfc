<cfcomponent>
        <cffunction  name="empFunc" access="remote">        
                <cfargument  name="position" type="string">
                <cfargument  name="relocate" type="string">
                <cfargument  name="dollar" type="float">
                <cfargument  name="cents" type="float">        
                <cfargument  name="cdate" type="date">
                <cfargument  name="p_url" type="string">
                <cfargument  name="f_name" type="string" >
                <cfargument  name="l_name" type="string">
                <cfargument  name="email" type="string">
                <cfargument  name="phone" type="integer" >
                <cfargument  name="doc_file" type="string" >
                <cfset local.thisDir = expandPath("../uploads")>
                <cfset local.salary=#dollar# & '.' & #cents#>
                <cfif len(trim(doc_file)) >      
                <!---<cfset salary=#arguments.dollar# & '.' & #arguments.cents#>--->        
                        <cffile action="upload" fileField="doc_file"  destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
                        <cfset local.file_name=#fileupload.serverfile# >
                <cfelse>
                        <cfset local.file_name="" >
                </cfif>       
                <cfquery name="subscribe" datasource="subscribe">
                        INSERT INTO subscribe.subscribe(position,relocate,cdate,website,resume,salary,first_name,last_name,email_id,phone)
                        VALUES ('#position#', '#relocate#', '#cdate#','#p_url#','#file_name#','#salary#',
                        '#f_name#','#l_name#','#email#','#phone#') 
                </cfquery>
                <cflocation  url="../cf_task23.cfm?Message=1">
        </cffunction>   
</cfcomponent>
