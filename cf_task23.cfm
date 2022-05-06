<html>
<head>
    
    <link rel="stylesheet" href = "css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="js/validate.js"></script>   
    <title>Form Validation</title>   

</head>
<body class='emp_form'>
<div class='container py-5 '>
    <cfparam name='Message' default = "value" >
    <cfif Message eq '1'>
        <div class="alert alert-success col-lg-6 offset-lg-3" role="alert">
          Data Saved Successfully
        </div>
    </cfif>
    <form method='post' action="components/employee.cfc?method=empFunc" name="img_form" enctype='multipart/form-data' class='col-lg-6 offset-lg-3 bg-white p-5' >
        <div class='row justify-content-center'>
        <h3 >Employment Application</h3>
        <h5>Infinity Box Inc.</h5>
        <hr>
          <div class="form-group required ">
            <label for="exampleInputEmail1" class="form-label control-label" >Which position are you applying for? </label>
              <div class='col-lg-5'>
                <select name='position' class='form-control' id="position" >
                    <option value=""></option>
                    <option value='ID'>Interface Designer</option>
                    <option value='SD' >Software Engineer</option>
                    <option value='SA' >System Administrator</option>
                    <option value='OM'>Office Manager</option>
                </select>
              </div>          
          </div>
          <div class="form-group pt-3 required">
            <label for="exampleInputEmail1" class="form-label control-label" >Are you willing to relocate? </label>
          <div class='form-check'> 
              <input type='radio' name='Relocate' class="form-check-input" value="Yes" id="relocate" >
              <label class="form-check-label" for="exampleRadios1">Yes</label>
          </div>
          <div class='form-check'>
                <input type='radio' name='Relocate' class="form-check-input" value="No" id="relocate">
                <label class="form-check-label" for="exampleRadios1">No</label>
          </div>
          </div>          
          <div class="form-group pt-3 required">
            <label for="exampleInputEmail1" class="form-label control-label" >When can you start? </label>
              <div class='col-lg-6'>
                  <input type='date' class='form-control' name='cdate' id='cdate'>        
              </div>          
          </div>
        <div class="form-group pt-3">
            <label for="exampleInputEmail1" class="form-label " >Portfolio Web Site </label>
            <input type="text" name="p_url" class='form-control' placeholder="http://" id="p_url">          
        </div>
        <div class="form-group pt-3 ">
            <label for="exampleInputEmail1" class="form-label " >Attach a Copy of Your Resume</label>          
            <input type='file' name='doc_file' accept='.pdf,.doc' aria-describedby="emailHelp" id="doc_file">
            <div class='pt-2'>
              <small id="emailHelp" class="form-text text-muted">Word or PDF Documents Only</small>
            </div>
        </div>
        <div class="form-group py-3">
            <label for="exampleInputEmail1" class="form-label " >Salary Requirements </label>
            <div class='col-lg-6'>          
                <div class='row' >$
                      <div class='col-sm-4'>
                          <input type="text" name="dollar" class='form-control h-space ' maxlength="3" id="dollar" >                
                          <small  class="form-text text-muted">Dollars</small>
                      </div>.
                      <div class='col-sm-4'>
                          <input type="text" name="cents" class='form-control h-space' maxlength="3" id="cents" > 
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
                          <input type="text" name="f_name" class='form-control' id='fname'> 
                          <small  class="form-text text-muted">First Name</small>
                      </div>
                      <div class='col-sm-6'>
                          <input type="text" name="l_name" class='form-control' id='lname'> 
                          <small  class="form-text text-muted">Last Name</small>
                      </div>          
                  </div>
          </div>
        <div class="form-group pt-3 required">
            <label  class="form-label control-label" >Email Address </label>
            <div class='col-lg-10'>
                <input type="text" name="email" class='form-control' id='email'>   
            </div>
        </div>
        <div class="form-group pt-3 required">
              <label  class="form-label control-label " >Phone </label>
              <div class='col-lg-5'>
                  <input type="text" name="phone" class='form-control' id='phone'>
              </div>
        </div>
        <div class='form-group row pt-3'>        
            <div class='col-sm-12 '>
              <input type="submit" name="Submit"  value="Submit" class="btn btn-success" onclick="return validateFields();" >
            </div>
        </div>
      </div>
    </form>
</div>


</body>
<!---
<script type="text/javascript">
function validateFields()

{
    
   var select=document.getElementById('position').value;
   
    var relocate=document.getElementById('relocate').checked;    
    var fname=document.getElementById('fname').value;
 
    var email=document.getElementById('email').value;
    var p1=document.getElementById('phone').value;
    var date=document.getElementById('cdate').value;
    var ph_length=p1.length;  
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
    else if (date =="")
    {
       alert("Date should not be empty");
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
    else if (p1 =="")
    {
       alert("Phone Number should not be empty");
         event.preventDefault();
        return false;
    }
    else if(isNaN(p1) ==true)
    {
        alert("Phone should not be in string format");
         event.preventDefault();
        return false;
        
    }
    else if(ph_length!=10)
    {
        alert("Phone length should be equal to 10");
         event.preventDefault();
        return false;
    }
    return true;     
}
</script>--->

</html>

