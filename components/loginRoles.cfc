<cfcomponent output="false">

<cffunction name="validateUser" access="public" output="false" returntype="array">
<cfargument  name="userName" type="string" required="true">
<cfargument  name="userPwd" type="string" required="true">
<cfset errorMessage=arrayNew(1)>
<cfif arguments.userName EQ "">

<cfset arrayAppend(errorMessage, 'Please Provide User Name')>
</cfif>

<cfif arguments.userPwd EQ "">

<cfset arrayAppend(errorMessage, 'Please Provide Password')>
</cfif>
<cfreturn errorMessage>

<!---- LogIn Function---->
</cffunction>

<cffunction name="doLogin" access="remote" output="false" returntype="boolean">
<cfargument  name="userName" type="string" required="true">
<cfargument  name="userPwd" type="string" required="true">

<cfset userLoggedIn=false>

<cfquery name="loginData" datasource="cms_data">
SELECT * FROM cms_data.user WHERE user_name="#arguments.userName#" AND pwd="#arguments.userPwd#"
</cfquery>

<cfif loginData.recordCount EQ 1>
<cflogin>
<cfloginuser  name="#loginData.user_name#"  password="#loginData.pwd#" roles="#loginData.role#" >
</cfloginuser >

</cflogin>
<cfapplication name="sessionUser" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)#
                        sessionManagement = "Yes">  
<cfset session.sessionUser={'user_id'=loginData.user_id,'user_name'=loginData.user_name,'user_roles'=loginData.role}>
<cfset userLoggedIn=true>


</cfif>


<cfreturn userLoggedIn>
</cffunction>

<!---- Logout Function---->


<cffunction name="doLogout" access="public" output="false" returntype="void">
<cfapplication name="sessionUser" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)#
                        sessionManagement = "Yes">  
<cfset structDelete(session, "sessionUser")>

<cflogout>
</cffunction>

<!---- Insert Page Function---->
<cffunction  name="addPage" access="remote" returnType="boolean" >
<cfargument  name="page_name" type="string" >
<cfargument  name="page_desc" type="string" >


        <cfquery name="page_data" datasource="cms_data"> 
        INSERT INTO cms_data.page(pagename,pagedesc) VALUES ('#page_name#', '#page_desc#') 
        </cfquery>  

        
        <cfset recordFound=true>
    
        <cfreturn recordFound>

</cffunction>


<!---- Delete Page Function---->

<cffunction  name="delPage" access="remote" returnType="boolean" >
<cfargument  name="page_id" type="integer" >



        <cfquery name="page_data" datasource="cms_data"> 
        DELETE FROM cms_data.page WHERE pageid="#page_id#" 
        </cfquery>  

        
        <cfset recordDelete=true>
    
        <cfreturn recordDelete>

</cffunction>

</cfcomponent>