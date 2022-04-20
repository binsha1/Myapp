<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<title>Subscribe Form</title>

</head>


<body>
<div class='container py-5 cform_div'>


<h3 class='text-center'>Subscribe Form </h3>

<cfform method='post' action=""  name="sub_form">
  <div class="form-group row">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >First  Name</label>
   <div class='col-sm-9'>
    <cfinput type="text" class="form-control" name="first_name" placeholder="Enter First Name" id="f_name" required="yes">
   
  </div>
  </div>

  <div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Email Id</label>
   <div class='col-sm-9'>
    <cfinput type="email" class="form-control" name="email_id" placeholder="Enter Email Address" id='email_id' required="yes">
  </div>
  </div>

    <div class="form-group row pt-3 pl-3">
    <div class='col-sm-3'></div>
    <div class="form-check col-sm-9">
      <input class="form-check-input" type="checkbox" id="gridCheck">
      <label class="form-check-label" for="gridCheck">
        Check me out
      </label>
    </div>
  </div
 <div class='form-group row pt-3'>
 
 <div class='col-sm-12 text-center'>
  <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-primary" id='submit' disabled>
  </div>

  </div>
</cfform>

</div>

</body>

</html>




<script>

  
$("body").on('change', '#email_id', function() {
 var email=$('#email_id').val();

 $.ajax({
   
         url: 'components/dbData.cfc',
         type: 'get',
         dataType:"json",
         data:{
           method:"getEmailData",
           u_email:email
           
         },
         success:function(data)
         {
           alert(data);
           /*if(data==0)
           {
             $('#submit').prop('disabled', false);
           }
           else{
             alert('error');
           }*/
         }

         
         
    });
});


</script>



