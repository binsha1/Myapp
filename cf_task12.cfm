<html>

<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>


<body>
<div class='container pt-5'>

<cfform method='post' action="">
  <div class="form-group row">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Enter Numeric Value</label>
   <div class='col-sm-9'>
    <cfinput type="text" class="form-control" name="num10" placeholder="Number less than 10" validate="integer" range = "1,10" message="Number should be less than 10" required="yes">
   
  </div></div>
 <div class='form-group row pt-3'>
 <div class='col-sm-4'></div>
 <div class='col-sm-4'>
  <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-primary">
  </div>
  <div class='col-sm-4'></div>
  </div>
</cfform>
</div>


<cfif isDefined("form.num10") neq "">

<cfquery name="user_data" datasource="user_inf">
 SELECT *
         FROM user_data
</cfquery>
<cfset num=form.num10>

<div class='container py-5'>
<table class='table table-bordered'>


<tr>
<th>First Name</th>
<th>Last Name</th>
</tr>
<cfoutput query="user_data">
<tr><td>
#first_name#</td>
<td>
#last_name#</td></tr>
</cfoutput>
</table>

<cfset data = QueryGetRow(user_data, num) >
<cfdump var=#data#>
</div>
</div>
</cfif>
</body>

</html>






