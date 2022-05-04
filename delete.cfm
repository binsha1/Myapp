

<cfif structKeyExists(session, 'sessionUser')>

<cfparam  name="id">

<cfset deleteData=createObject("component","components.loginRoles")>


  <cfset isDelete=deleteData.delPage(id)>
<cfif isDelete EQ true>
            <cfoutput>'<script>alert('Page Deleted Successfully!');window.location.href='page_list.cfm'</script>'
            </cfoutput>
</cfif>

</cfif>