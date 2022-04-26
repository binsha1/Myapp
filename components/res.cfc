<cfcomponent>
    <cffunction  name="numStatus" access="remote">
        <cfargument  name="Number">
        <cfset status="">
        <cfif #Number# EQ 1>
            <cfset status="OK">
        <cfelseif #Number# EQ 2>
            <cfset status="OK">
        <cfelseif #Number# EQ 3>
            <cfset status="Fair">
        <cfelseif #Number# EQ 4>
            <cfset status="Good">
        <cfelseif #Number# EQ 5>
            <cfset status="Very Good">
        <cfelse>
            <cfset status="Error">
        </cfif>
        <cflocation url="../cf_task1.cfm?status=#status#">
    </cffunction>

    <cffunction  name="numStatus2" access="remote">
        <cfargument name="Number">
        <cfset status="">
        <cfswitch expression="#formNum#"> 
            <cfcase value=1><cfset status="OK"></cfcase>
            <cfcase value=2><cfset status="OK"></cfcase> 
            <cfcase value=3><cfset status="Fair"></cfcase>
            <cfcase value=4><cfset status="Good"></cfcase>
            <cfcase value=5><cfset status="Very Good"></cfcase>
            <cfdefaultcase><cfset status="Error"></cfdefaultcase> 
        </cfswitch>        
        <cflocation url="../cf_task2.cfm?status=#status#">
    </cffunction>
</cfcomponent>