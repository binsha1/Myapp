<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <title>Captcha Form</title>
</head>
<body class='bg-success'>
        <div class='container py-5'> 
            <div class="col-lg-6 offset-lg-3 bg-white p-5">
                  <h3 class='text-center pb-3'>Birthday Form</h3>
                  <form method='post' action="components/res.cfc?method=birthWishes" enctype="multipart/form-data" name="img_form">
                    <cfif structKeyExists(session,"birthday")>
                              <cfif session.birthday EQ "false">
                                  <div class="alert alert-danger alert-dismissible ">
                                      <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                      Please Upload File!
                                  </div>
                              <cfelse>
                                  <div class="alert alert-success alert-dismissible ">
                                      <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                          Birthday wish sent successfully
                                  </div>
                              </cfif>                               
                          </cfif> 
                      <cfset data=createObject("component","components.res")>
                      <cfset captcha=data.capString()>
                      <cfset encodeCap = hash(captcha)>
                      <div class="form-group row">
                          <label for="exampleInputEmail1" class="form-label col-sm-4" >Birthday Baby Name</label>
                          <div class='col-sm-8'>                            
                               <input type="text" class="form-control" name="baby_name" placeholder="Enter Birthday Baby Name"  required="yes">
                          </div>                          
                      </div>
                      <div class="form-group row pt-3">
                            <label for="exampleInputEmail1" class="form-label col-sm-4" >Birthday Baby Email ID</label>
                          <div class='col-sm-8'>
                           <input type="text" class="form-control" name="baby_mail" placeholder="Enter Birthday Baby Email ID"  required="yes">
                          </div>                           
                      </div>
                      <div class="form-group row pt-3">
                            <label for="exampleInputEmail1" class="form-label col-sm-4 " >Birthday Wishes</label>
                          <div class='col-sm-8'>
                            <textarea  name="b_wishes" class='form-control' required='yes'> </textarea >
                         </div>                           
                      </div>
                      <div class="form-group row pt-3">
                            <label for="exampleInputEmail1" class="form-label col-sm-4 " >Greeting Image</label>
                          <div class='col-sm-8'>
                          <input type='file' name='img_file' accept='.jpg,.png,.gif'>
                         </div>                           
                      </div>
                      <div class='form-group row pt-3'>                        
                        <div class='col-sm-12 text-center'>
                          <input type="submit" name="Submit"  value="Submit" class="btn btn-primary">
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>


<body>
<div class='container py-5 cform_div'>
<h3 class='text-center'>Birthday Form </h3>
<cfform method='post' action="" enctype="multipart/form-data" name="img_form">
  <div class="form-group row">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Birthday Baby  Name</label>
   <div class='col-sm-9'>
    <cfinput type="text" class="form-control" name="baby_name" placeholder="Enter Birthday Baby Name"  required="yes">
   
  </div>
  </div>

<div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Birthday Baby Email ID</label>
   <div class='col-sm-9'>
    <cfinput type="text" class="form-control" name="baby_mail" placeholder="Enter Birthday Baby Email ID"  required="yes">
   
  </div>
  </div>
  <div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Birthday Wishes</label>
   <div class='col-sm-9'>
    <cftextarea  name="b_wishes" class='form-control' required='yes'> 
   </cftextarea >
  </div>
  </div>

  <div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Greeting Image</label>
   <div class='col-sm-9'>
    <cfinput type='file' name='img_file' accept='.jpg,.png,.gif'>
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
<cfset thisDir = expandPath("./uploads")>
    <cfif len(trim(form.img_file)) >
            <cffile action="upload" fileField="form.img_file"  destination="#thisDir#" result="fileUpload"
            nameconflict="overwrite">
            <cfset file_name=#fileupload.serverfile# >         
            <cfset fileLoc=fileupload.serverDirectory & '\' & fileupload.serverfile >
              <cfelse>
              <cfset fileLoc="">
            <cfoutput>'<script>alert('Please Upload File!')</script>'
            </cfoutput>
            </cfif>

           
         
<cfmail to="#form.baby_mail#" from="binshasr3@gmail.com" 
subject="Happy Birthday" > 
<cfmailparam file="#fileLoc#" disposition="inline"  contentID="image1">
<img src="cid:image1">
Happy Birthday  #form.baby_name# !


</cfmail>
<cfoutput>'<script>alert('Birthday wish sent successfully!')</script>'
            </cfoutput>

</cfif>---->




