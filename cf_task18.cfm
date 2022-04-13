<cfset q_name=queryNew("ID,Name,email","integer,varchar,varchar")>
<cfset queryAddRow(q_name)>
<cfset querySetCell(q_name, "ID", "1")>
<cfset querySetCell(q_name, "Name", "ABCD")>
<cfset querySetCell(q_name, "email", "abcd@gmail.com")>

<cfset queryAddRow(q_name)>
<cfset querySetCell(q_name, "ID", "2")>
<cfset querySetCell(q_name, "Name", "BOB")>
<cfset querySetCell(q_name, "email", "bob@gmail.com")>

<cfset queryAddRow(q_name)>
<cfset querySetCell(q_name, "ID", "3")>
<cfset querySetCell(q_name, "Name", "Eva")>
<cfset querySetCell(q_name, "email", "eva@gmail.com")>
<cfdump var=#q_name#>