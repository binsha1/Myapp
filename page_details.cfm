<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Page Details</title>

</head>


            
<cfif structKeyExists(session, 'sessionUser')>
<cfparam name='id' type='integer'>

<cfquery name='page' datasource='cms_data'>
SELECT *
FROM page
WHERE pageid="#id#" 
</cfquery>

<cfoutput query='page'>
<div class='container text-center table_container py-5'>
<h3 class='text-center pb-5'>Page Details</h3>
<table class='table table-bordered '>

<tbody>

<tr>
<td>Page Name</td>
<td>#pagename#</td>
</tr>
<tr>
<td>Page Description</td>
<td>#pagedesc#</td>
</tr>

</tbody>
</table>







</div>


</cfoutput>

</cfif>