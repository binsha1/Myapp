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
    </cffunction>
    
<!---Login Functionality---->

    <cffunction name="doLogin" access="remote" output="false" returntype="boolean">
        <cfargument  name="userName" type="string" required="true">
        <cfargument  name="userPwd" type="string" required="true">
        <cfset LoggedIn=false>

        <cfquery name="loginUser" datasource="login_user">
        SELECT * FROM login_user.login_data WHERE user_name="#arguments.userName#" AND password="#arguments.userPwd#"
        </cfquery>

        <cfif loginUser.recordCount EQ 1>
            <cflogin>
                <cfloginuser  name="#loginUser.user_name#"  password="#loginUser.password#" roles="User" >
                </cfloginuser >
            </cflogin>
            <cfapplication name="stLoggedInUser" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)# sessionManagement = "Yes">  
            <cfset session.stLoggedInUser={'user_id'=loginUser.id,'user_name'=loginUser.user_name}>
            <cfset LoggedIn=true>
        </cfif>

        <cfreturn LoggedIn>
    </cffunction>

<!---Logout Functionality---->

    <cffunction name="doLogout" access="public" output="false" returntype="void">
        <cfapplication name="stLoggedInUser" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)# sessionManagement = "Yes">  
        <cfset structDelete(session, "stLoggedInUser")>
        <cflogout>
    </cffunction>
</cfcomponent>