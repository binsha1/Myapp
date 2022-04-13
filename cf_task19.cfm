<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>


<body>
<div class='container py-5 cform_div'>

<cfform method='post' action="">

 <div class='form-group row pt-3 text-center'>

 <div class='col-sm-12'>
  <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-success">
  </div>

  </div>
</cfform>
</body>
</html>

<cfif structKeyExists(form,'Submit')> 


<cfif IsDefined("cookie.VisitsCounter") eq "NO">
<cfcookie name="VisitsCounter" value="1">
</cfif>

<cfif IsDefined("cookie.VisitsCounter") eq "YES">
<cfset c_value=cookie.VisitsCounter>
<cfset c_count=c_value+1>
<cfcookie name="VisitsCounter" value="#c_count#">
</cfif>

<cfoutput>
<p class='text-center font-weight-bolder'>
Cookie Value: 
#cookie.VisitsCounter#</p>
</cfoutput>

</cfif>
