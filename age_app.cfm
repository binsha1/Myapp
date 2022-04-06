<html>
<head>
<link rel="stylesheet" href="css/style.css">
</head>
<div class='cf_class'>

<cfform name="dob_form" method="post" action="age_res.cfm">
<label>User DOB: </label>
<cfinput type = "date" name = "user_dob"  message = "Enter a correctly formatted date (mm/dd/yyyy)" 
 required = "no" placeholder="MM/DD/YYYY"> 
<br><br>
<label>Mother DOB: </label><cfinput type = "date" name = "mom_dob" message = "Enter a correctly formatted date (mm/dd/yyyy)" 
 required = "no" placeholder="MM/DD/YYYY"> <br><br>
<cfinput type="Submit" name="SubmitBtn" value="Submit">
</cfform>
</div>

</html>