<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet"type="text/css" />
 <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"> </script>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<title>Form Validation</title>

</head>


<body class='emp_form'>
<div class='container py-5 '>



<cfform method='post' action="" enctype="multipart/form-data" name="img_form" class='col-lg-6 offset-lg-3 bg-white p-5'>
<div class='row justify-content-center'>
<h3 >Employment Application</h3>
<h5>Infinity Box Inc.</h5>
<hr>
  <div class="form-group required ">
    <label for="exampleInputEmail1" class="form-label control-label" >Which position are you applying for? </label>
   <div class='col-lg-5'>
    <cfselect name='position' class='form-control ' >
    <option value=""></option>
    <option value='ID'>Interface Designer</option>
    <option value='SD' >Software Engineer</option>
    <option value='SA' >System Administrator</option>
    <option value='OM'>Office Manager</option>
    </cfselect>
   </div>
  
  </div>

  <div class="form-group pt-3 required">
    <label for="exampleInputEmail1" class="form-label control-label" >Are you willing to relocate? </label>
  <div class='form-check'> 
    <cfinput type='radio' name='relocate' class="form-check-input" value="Yes" >
    <label class="form-check-label" for="exampleRadios1">
    Yes
  </label>
  </div>
  <div class='form-check'>
    <cfinput type='radio' name='relocate' class="form-check-input" value="No">
    <label class="form-check-label" for="exampleRadios1">
    No
  </label>
  </div>
  </div>
  
   <div class="form-group pt-3 required">
    <label for="exampleInputEmail1" class="form-label control-label " >When can you start? </label>
    <div class='col-lg-6'>
    <cfinput type='date' class='form-control' name='cdate' id='cdate'>
   <!---<div class='row' >
        <div class='col-sm-3'>
        <cfinput type="text" name="mm" class='form-control h-space ' maxlength="2" > 
        
        <small  class="form-text text-muted">MM</small>
        </div>/
        <div class='col-sm-3'>
        <cfinput type="text" name="dd" class='form-control h-space' maxlength="2" > 
        <small  class="form-text text-muted">DD</small>
        </div>/
        <div class='col-sm-4'>
        <cfinput type="text" name="yyyy" class='form-control h-space' maxlength="4" > 
        <small  class="form-text text-muted">YYYY</small>
        </div>
        <div class='col-sm-3'>
        <button class='btn btn-light'>
       <i class='fa fa-calendar' id='full'></i></button>
        </div>
  </div>--->
    
   </div>
  
  </div>

 <div class="form-group pt-3">
    <label for="exampleInputEmail1" class="form-label " >Portfolio Web Site </label>
    
   <cfinput type="text" name="p_url" class='form-control' placeholder="http://">
    
  
  
  </div>
  <div class="form-group pt-3 ">
    <label for="exampleInputEmail1" class="form-label " >Attach a Copy of Your Resume</label>
   
    <cfinput type='file' name='img_file' accept='.pdf,.doc' aria-describedby="emailHelp">
    <div class='pt-2'>
  <small id="emailHelp" class="form-text text-muted">Word or PDF Documents Only</small>
  </div>
  </div>

   <div class="form-group py-3">
    <label for="exampleInputEmail1" class="form-label " >Salary Requirements </label>
    <div class='col-lg-6'>
   <!---<cfinput type="number" name="salary" class='form-control'>  --->
   <div class='row' >$
        <div class='col-sm-4'>
        <cfinput type="text" name="$" class='form-control h-space ' maxlength="3" > 
        
        <small  class="form-text text-muted">Dollars</small>
        </div>.
        <div class='col-sm-4'>
        <cfinput type="text" name="p2" class='form-control h-space' maxlength="3" > 
        <small  class="form-text text-muted">Cents</small>
        </div>
        

   
  </div> 
  </div>
  
  </div>
  <hr>


  <h6>Your Contact Information</h6>
 <div class="form-group pt-3 required">
    <label for="exampleInputEmail1" class="form-label control-label" >Name </label>
    <div class='col-sm-10'>
    <div class='row'>
        <div class='col-sm-6'>
        <cfinput type="text" name="f_name" class='form-control' id='fname'> 
        <small  class="form-text text-muted">First Name</small>
        </div>
        <div class='col-sm-6'>
        <cfinput type="text" name="l_name" class='form-control' id='lname'> 
        <small  class="form-text text-muted">Last Name</small>
        </div>

  
  </div>
  </div>
<div class="form-group pt-3 required">
<label  class="form-label control-label" >Email Address </label>
<div class='col-lg-10'>
   <cfinput type="text" name="email" class='form-control' id='email'>   
  </div>

</div>
<div class="form-group pt-3 required">
<label  class="form-label control-label " >Phone </label>
<div class='col-lg-10'>
<div class='row' id='phone-field'>
        <div class='col-sm-3'>
        <cfinput type="text" name="p1" class='form-control h-space ' id="p1" maxlength="3" > 
        
        <small  class="form-text text-muted">###</small>
        </div>-
        <div class='col-sm-3'>
        <cfinput type="text" name="p2" class='form-control h-space' id="p2" maxlength="3" > 
        <small  class="form-text text-muted">###</small>
        </div>-
        <div class='col-sm-3'>
        <cfinput type="text" name="p3" class='form-control h-space' id="p3" maxlength="4" > 
        <small  class="form-text text-muted">###</small>
        </div>

   
  </div>

</div>
  </div>

 <div class='form-group row pt-3'>
 
 <div class='col-sm-12 '>
  <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-success" onclick="return validateFields();">
  </div>

  </div>
  </div>
</cfform>

</div>

</body>

</html>


<script>
$(document).ready(function() {
 $('#full').datepicker({
   onclick: function(dateText, inst) {
        var pieces = dateText.split('/');
        $('#day').val(pieces[0]);
        $('#month').val(pieces[1]);
        $('#year').val(pieces[2]);
    }
    
});
});
function validateFields()
{
    var select=document.getElementById('position').value;
    var relocate=document.getElementById('relocate').checked;
    var fname=document.getElementById('fname').value;
    var lname=document.getElementById('lname').value;
    var email=document.getElementById('email').value;
     var p1=document.getElementById('p1').value;
     var p2=document.getElementById('p2').value;
     var p3=document.getElementById('p3').value;
     alert(isNaN(p2));
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ ;
    
    if(select=="")
    {        
        alert("Select atleast one valid option !!");
        event.preventDefault();
        return false;
    }
    else if(relocate==false)
    {
        alert("Select yes or no !!");
        event.preventDefault();
        return false;
    }
    else if(relocate==false)
    {
        alert("Select yes or no !!");
        event.preventDefault();
        return false;
    }
    else if((fname=="") && (lname==""))
    {
         alert("First Name and Last Name should not be empty");
         event.preventDefault();
        return false;
    }
    else if((fname=="") && (lname!=""))
    {
        alert("First Name should not be empty");
         event.preventDefault();
        return false;
    }
    else if((fname!="") && (lname==""))
    {
        alert("Last Name should not be empty");
         event.preventDefault();
        return false;
    }
    else if((email==" "))
    {
        alert("Email should not be empty");
         event.preventDefault();
        return false;
    }
  
    else if(!(email.match(mailformat)))
    {
        alert("Email is not in correct format");
         event.preventDefault();
        return false;
    }
    else if((isNaN(p1)  && isNaN(p2)  && isNaN(p3) ) )
    {
        alert("Phone should not be in string format");
         event.preventDefault();
        return false;
        
    }
    /*else if((isNaN(p2) ==true ))
    {
        alert("Phone should not be in string format");
         event.preventDefault();
        return false;
        
    }
    else if((isNaN(p3) ==true ))
    {
        alert("Phone should not be in string format");
         event.preventDefault();
        return false;
        
    }
    else if(p1 =="" ))
    {
        alert("Phone should not be empty");
         event.preventDefault();
        return false;
        
    }
    else if(p2 =="" ))
    {
        alert("Phone should not be empty");
         event.preventDefault();
        return false;
        
    }
    else if(p3 =="" ))
    {
        alert("Phone should not be empty");
         event.preventDefault();
        return false;
        
    }*/




   
    return true;
}
</script>


<cfif structKeyExists(form, "Submit")>
<cfoutput>
jklgljk
</cfoutput>
</cfif>
