<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>
<script>
function validateInput()
{
    var v=document.getElementById('num').value;
if(isNaN(v)==true)
{
    alert('Non numeric value entered');
}

}

</script>

<body>
<div class='container py-5 '>




<cfform method='post'  name="img_form">
  <div class="form-group row">
    <label for="exampleInputEmail1" class="form-label col-sm-3" ></label>
   <div class='col-sm-9'>
    <cfinput type="text" class="form-control" name="num_value" id='num' placeholder="Enter Numeric Value" onenter='validateInput();' >
   
  </div>
  </div>

  

 <div class='form-group row pt-3'>
 
 <div class='col-sm-12 text-center'>
  <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-primary">
  </div>

  </div>
</cfform>
<cfif structKeyExists(form,'Submit')>
                        <cfset num = form.num_value>
                        <cfif isNumeric(num)>
                        <div class='text-center'>
                            <cfloop from ="1" to =#num# index="i">
                                <cfoutput>
                                    <cfif #i# MOD 2 EQ 0>
                                        <span class="evenNum text-center">#i#</span>
                                    <cfelse>
                                        <span class="oddNum text-center">#i#</span>
                                    </cfif>
                                    <br>
                                </cfoutput>
                             </cfloop>
                             </div>
                        
</cfif>
                    </cfif>
</div>

</body>

</html>






