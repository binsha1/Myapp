<cfcomponent>
<cffunction  name="empFunc" access="remote">        
        <cfargument  name="position" >
        <cfargument  name="relocate">
        <cfargument  name="dollar" >
        <cfargument  name="cents" >        
        <cfargument  name="cdate" >
        <cfargument  name="p_url" >
        <cfargument  name="f_name" >
        <cfargument  name="l_name" >
        <cfargument  name="email" >
        <cfargument  name="phone" >
        <cfargument  name="doc_file" >
        <cfset thisDir = expandPath("../uploads")>
        <cfset salary=#dollar# & '.' & #cents#>
        <cfif len(trim(doc_file)) >      
        <!---<cfset salary=#arguments.dollar# & '.' & #arguments.cents#>--->        
                <cffile action="upload" fileField="doc_file"  destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
                <cfset file_name=#fileupload.serverfile# >
        <cfelse>
                <cfset file_name="" >
        </cfif>       
        <cfquery name="subscribe" datasource="subscribe"> 
    
                INSERT INTO subscribe.subscribe(position,relocate,cdate,website,resume,salary,first_name,last_name,email_id,phone)
                VALUES ('#position#', '#relocate#', '#cdate#','#p_url#','#file_name#','#salary#',
                '#f_name#','#l_name#','#email#','#phone#') 
                </cfquery> 

                <cflocation  url="../cf_task23.cfm?Message=1">
    </cffunction>   
</cfcomponent>
