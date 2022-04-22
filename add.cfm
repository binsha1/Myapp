<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>

<cfapplication name="sessionUser" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)#
                        sessionManagement = "Yes">  

            
<cfif structKeyExists(session, 'sessionUser')>
<body>
<cfif structKeyExists(form, "Submit")>
<cfset insertData=createObject("component","components.loginRoles")>


  <cfset isLogin=insertData.addPage(form.page_name,form.description)>

<cfif isLogin EQ true>
            <cfoutput>'<script>alert('Page Added Successfully!');window.location.href='page_list.cfm'</script>'
            </cfoutput>
</cfif>
</cfif>


<div class='container py-5 cform_div'>


<h3 class='text-center'>Add New Page </h3>

<cfform method='post' action=""  name="img_form">
  <div class="form-group row">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Page Name</label>
   <div class='col-sm-9'>
    <cfinput type="text" class="form-control" name="page_name" placeholder="Enter Page Name"  required="yes">
   
  </div>
  </div>

  <div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Page Description</label>
   <div class='col-sm-9'>
    <cftextarea  name="description" class='form-control' required='yes'> 
   </cftextarea >
  </div>
  </div>

  
 <div class='form-group row pt-3'>
 
 <div class='col-sm-12 text-center'>
  <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-primary">
  </div>

  </div>
</cfform>

</div>

</body>




</cfif>
</html>



