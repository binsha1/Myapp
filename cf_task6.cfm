<head>
<link rel="stylesheet" href="css/style.css">
</head>

<div class='cf_class'>
<cfform name="sform" action="">
<label>Key Text: </label>
<cfinput name="key_text" type="Text"><br><br>
<label>Value Text: </label>
<cfinput name="value_text" type="Text">

<br><br>
<cfinput type="Submit" name="SubmitBtn" value="Submit">
</cfform>


  <cfif structKeyExists(form, "Submit")>

<cfset struct_name=structNew()>

<cfset struct_name.Key=form.key_text>
<cfset struct_name.Value=form.value_text>

<cfif structKeyExists(form,"SubmitBtn")>
<cfdump var=#struct_name#>
</cfif>
</cfif>
</div>