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
        <!---- LogIn Function---->
        <cffunction name="doLogin" access="remote" output="false" returntype="boolean">
                <cfargument  name="userName" type="string" required="true">
                <cfargument  name="userPwd" type="string" required="true">
                <cfoutput>
                #arguments.userName#
                </cfoutput>
                <cfset userLoggedIn=false>
                <cfquery name="loginData" datasource="cms_data">
                        SELECT * FROM cms_data.user WHERE user_name=<cfqueryparam value="#arguments.userName#" cfsqltype="CF_SQL_VARCHAR"> AND pwd=<cfqueryparam value="#arguments.userPwd#" cfsqltype="CF_SQL_VARCHAR">
                </cfquery>
                <cfif loginData.recordCount EQ 1>
                        <cflogin>
                                <cfloginuser  name="#loginData.user_name#"  password="#loginData.pwd#" roles="#loginData.role#" >
                                </cfloginuser>
                        </cflogin>
                        <cfset session.sessionUser={'user_id'=loginData.user_id,'user_name'=loginData.user_name,'user_roles'=loginData.role}>
                        <cfset userLoggedIn=true>
                </cfif>
                <cfreturn userLoggedIn>
        </cffunction>
        <!---- Logout Function---->
        <cffunction name="doLogout" access="public" output="false" returntype="void">
                <cfset structDelete(session, "sessionUser")>
                <cflogout>
        </cffunction>

        <!---- Insert Page Function---->
        <cffunction  name="addPage" access="remote" returnType="boolean" >
                <cfargument  name="page_name" type="string" >
                <cfargument  name="page_desc" type="string" >
                <cfquery name="page_data" datasource="cms_data"> 
                        INSERT INTO cms_data.page(pagename,pagedesc) VALUES (<cfqueryparam value="#arguments.page_name#" cfsqltype="CF_SQL_VARCHAR">, <cfqueryparam value="#arguments.page_desc#" cfsqltype="CF_SQL_VARCHAR">) 
                </cfquery>                
                <cfset recordFound=true>        
                <cfreturn recordFound>
        </cffunction>
        <!---- Delete Page Function---->
        <cffunction  name="delPage" access="remote" returnType="boolean">
                <cfargument  name="page_id" type="integer" >
                <cfoutput>#page_id#
                </cfoutput>
                <cfquery name="page_data" datasource="cms_data"> 
                        DELETE FROM cms_data.page WHERE pageid=<cfqueryparam value="#arguments.page_id#" cfsqltype="CF_SQL_INTEGER"> 
                </cfquery>                
                <cfset recordDelete=true>
                <cfreturn recordDelete>        
                
        </cffunction>
</cfcomponent>