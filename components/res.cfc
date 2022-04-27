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

    <cffunction  name="divide" access="remote" returntype="array">
            <cfargument name="Number">
            <cfset numArray=arrayNew(1)>
            <cfloop list="#Number#" index="i" >
                <cfif i mod 3>            
                        <cfcontinue>
                <cfelse>
                    <cfset arrayAppend(numArray, i)>
                </cfif>            
            </cfloop> 
        <cfreturn numArray>           
    </cffunction>

    <cffunction name="dateFunc" access="remote" returnType="array">
        <cfargument  name="user_dob">
        <cfargument  name="mom_dob">
        <cfset current_year=DateFormat(Now(),"yyyy")>
        <cfset user_year=DateFormat(user_dob,"yyyy")>
        <cfset user_month=DateFormat(user_dob,"mm")>
        <cfset user_day=DateFormat(user_dob,"dd")>

        <cfset mom_year=DateFormat(mom_dob,"yyyy")>
        <cfset mom_month=DateFormat(mom_dob,"mm")>
        <cfset mom_day=DateFormat(mom_dob,"dd")>

        <cfset user_age=dateDiff("d", user_year, current_year)>
        <cfset deliver_age=dateDiff("d", mom_year, user_year)>
        <cfset arrayN=arrayNew(1)>
        
        <cfset user_bdy=CreateDate(current_year,user_month,user_day)>
        <cfset mom_bdy=CreateDate(current_year,mom_month,mom_day)>
        <cfset user_count=dateDiff("d",  now(), user_bdy)>
        <cfset mom_count=dateDiff("d",  now(), mom_bdy)>
        <cfset arrayAppend(arrayN,user_age)>
        <cfset arrayAppend(arrayN,deliver_age)>
        <cfset arrayAppend(arrayN,user_count)>
        <cfset arrayAppend(arrayN,mom_count)>
        <cfreturn arrayN>
    </cffunction>

    <cffunction  name="structFunc" access="remote">
    <cfargument  name="key">
    <cfargument  name="value">
    <cfset struct_name=structNew()>
    <cfset struct_name.Key=key>
    <cfset struct_name.Value=value>
    <cfreturn struct_name>
    </cffunction>

</cfcomponent>