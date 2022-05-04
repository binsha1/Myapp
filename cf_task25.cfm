<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="js/validate.js"></script>
  <title>Word Count</title>
</head>
<body class='bg-success'>
        <div class='container py-5'> 
            <div class="col-lg-6 offset-lg-3 bg-white p-5">
                  <h3 class='text-center pb-3'>Word Count  </h3>
                  <form method='post' action="components/res.cfc?method=wordFunc" enctype="multipart/form-data" name="img_form">
                                
                      <div class="form-group row">
                          <label for="exampleInputEmail1" class="form-label col-sm-4" >Enter Text</label>
                          <div class='col-sm-8'>                            
                               <textarea  name="description" class='form-control' required='yes'></textarea >
                      </div>                 
                      
                      <div class='form-group row pt-3'>                        
                        <div class='col-sm-12 text-center'>
                            <input type="submit" name="Submit"  value="Submit" class="btn btn-primary" >
                        </div>
                      </div>
                  </form>    
                </div>

</body>
</html>







<!---<html>

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

<cfif structKeyExists(form, "Submit")>

<cfquery name="validate_email" datasource="validate_email"  >
       INSERT INTO validate_email.validate_data(first_name,email_id) VALUES('#form.first_name#','#form.email_id#')
    </cfquery>
</cfif>
<cfoutput>'<script>alert('Subscribed Successfully')</script>'
</cfoutput>

<script>

  
$("body").on('change', '#email_id', function() {
 var email=$(this).val();

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
           
           if(data==0)
           {
             $('#submit').prop('disabled', false);
           }
           else{
             alert('Email Already Exists');
           }
         }

         
         
    });
});


</script>



--->

<!---<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>


<body>
<div class='container py-5 cform_div'>


<h3 class='text-center'>Word Count</h3>

<cfform method='post' action=""  name="w_form">
 

  <div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Enter Text</label>
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

</html>
<cfif structKeyExists(form, "Submit")>

<cfset wordData=createObject("component", "components.tagCloud")>
<cfset structData=wordData.init(form.description)>


<cfset skeys=structKeyList(structData)>
<cftry>
<cfloop list="#skeys#" index="i">
   

<cfquery name="word" datasource="word_data">
INSERT INTO word_data.word_count(word_name) VALUES('#i#' )
</cfquery>
</cfloop>

<cfcatch type="database">
</cfcatch>
</cftry>


<cflocation url="count.cfm?desc='#form.description#">
</cfif>


--->


