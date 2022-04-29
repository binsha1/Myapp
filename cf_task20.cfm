


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
                  <h3 class='text-center pb-3'>Captcha and Email Validation </h3>
                  <form method='post' action="components/res.cfc?method=capFunc" enctype="multipart/form-data" name="img_form">
                    <cfif structKeyExists(session,"cap")> 

                              <cfif session.cap EQ "false">
                                  <div class="alert alert-danger alert-dismissible ">
                                      <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                      Text mismatch! Please reenter.
                                  </div>
                              <cfelse>
                                  <div class="alert alert-success alert-dismissible ">
                                      <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                    <cfoutput> #form.mail_add# successfully subscribe our newsletter.</cfoutput>
                                  </div>

                              </cfif>                               
                          </cfif> 
                      <cfset data=createObject("component","components.res")>
                      <cfset captcha=data.capString()>
                      <cfset encodeCap = hash(captcha)>
                      <div class="form-group row">
                          <label for="exampleInputEmail1" class="form-label col-sm-4" >Captcha</label>
                          <div class='col-sm-8'>                            
                              <cfimage action="captcha" difficulty="low" text="#captcha#" width="300" height="100"/>
                              <cfoutput>
                              <input type="hidden" name="cHash" value="#encodeCap#">
                              </cfoutput>                              
                          </div>                          
                      </div>
                      <div class="form-group row pt-3">
                            <label for="exampleInputEmail1" class="form-label col-sm-4" >Captcha Text</label>
                          <div class='col-sm-8'>
                            <input type="text" class="form-control" name="captchaText" placeholder="Enter Captcha"  required="yes">
                          </div>                           
                      </div>
                      <div class="form-group row pt-3">
                            <label for="exampleInputEmail1" class="form-label col-sm-4 " >Email</label>
                          <div class='col-sm-8'>
                            <input type="email" class="form-control" name="mail_add" placeholder="Enter Email Address"  required="yes">
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




