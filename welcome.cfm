<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Welcome</title>

</head>


<cfapplication name="stLoggedInUser" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)#
                        sessionManagement = "Yes">  

            
<cfif structKeyExists(session, 'stLoggedInUser')>

 
<body>

<div class="container py-5 w_div">


<div class="col-lg-6 offset-lg-3">

<h3 class='text-center text-success'><cfoutput>Welcome #session.stLoggedInUser.user_name#</cfoutput>


</h3>

<div class="row">
<div class='col-lg-12 text-center'>
<a class='btn btn-success' href='cf_task27.cfm?logout'>Logout</a>
</div>
</div>
</div>
</div>

</body>
<cfelse>
<h3 class='text-center text-danger'>Invalid User</h3>
</cfif>
</html>