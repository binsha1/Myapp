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
  <div class="form-group row">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Enter Keyword: </label>
   <div class='col-sm-9'>
    <cfinput type="text" class="form-control" name="txtString" placeholder="Enter Text"  required="yes">
   
  </div></div>
 <div class='form-group row pt-3'>
 <div class='col-sm-4'></div>
 <div class='col-sm-4'>
  <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-success">
  </div>
  <div class='col-sm-4'></div>
  </div>
</cfform>
</div>
<cfif isDefined(form.txtString) neq "">
<cfset sent="the quick brown fox jumps over the lazy dog">
<cfset search_string=form.txtString>
<cfset count_var=ListValueCount(sent,search_string," ")>

<cfoutput>
<p class='text-center'>
Found keyword in #count_var# times</p>
</cfoutput>

</cfif>
</body>

</html>






