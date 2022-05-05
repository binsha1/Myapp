<cfif structKeyExists(session, 'sessionUser')>
    <cfparam  name="id">
    <cfset deleteData=createObject("component","components.loginRoles")>
      <cfset isDelete=deleteData.delPage(id)>
      <cfif isDelete EQ true>
            <cflocation  url="page_list.cfm?delete=1">                
    </cfif>
</cfif>