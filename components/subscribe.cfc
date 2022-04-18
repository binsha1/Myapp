
<cfcomponent> 
    <cffunction name="insertDB" access="remote"> 
    <cfquery name="subscribe" datasource="subscribe"> 
    
INSERT INTO subscribe.subscribe(position,relocate,cdate,website,resume,salary,first_name,last_name,email_id,phone)
VALUES ('#position#', '#relocate#', '#cdate#','#p_url#','#file_name#','#salary#',
'#f_name#','#l_name#','#email#','#phone#') 
</cfquery> 

<cflocation  url="cf_task23.cfm?Message=1">
    </cffunction> 
</cfcomponent>