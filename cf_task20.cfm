

<cffunction name="capString" returnType="string" output="false">
	<cfset var chars = "23456789ABCDEFGHJKMNPQRS*@/abcdefghijklmnopqrst()">
	<cfset var length = randRange(4,7)>
	<cfset var result = "">
	<cfset var i = "">
	<cfset var char = "">
	
	<cfscript>
	for(i=1; i <= length; i++) {
		char = mid(chars, randRange(1, len(chars)),1);
		result&=char;
	}
	</cfscript>
		
	<cfreturn result>
</cffunction>




<cfif structKeyExists(form,'Submit')> 
<cfoutput>
#form.captchaText#
#form.cHash#
</cfoutput>
<cfif hash((form.captchaText)) neq form.cHash>

 <h3 style="color:Red; font-style:italic" class='text-center pt-5'>
    <cfoutput>Text mismatch! Please reenter.</cfoutput>
    </h3>
<cfelse>
<h3 style="color:Green; font-style:italic" class='text-center pt-5'>
    <cfoutput>Email Address successfully subscribe our newsletter.</cfoutput>
    </h3>
</cfif>
</cfif>
<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>


<body>
<div class='container py-5 cform_div'>
<div class="row">
<div class="col-sm-12 ">
<h3 class='text-center'>Captcha and Email Validation </h3>

<cfform method='post' action="" enctype="multipart/form-data" name="img_form">

<cfset captcha=capString()>
<cfset encodeCap = hash(captcha)>

  <div class="form-group row">
    <label for="exampleInputEmail1" class="form-label col-sm-3 text-right" >Captcha</label>
   <div class='col-sm-3'>
    
    <cfimage action="captcha" difficulty="low" text="#captcha#" width="300" height="100"/>
    <cfinput type="hidden" name="cHash" value="#encodeCap#">
  </div>
  <div class='col-sm-6'></div>
  </div>

  <div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3 " >Captcha Text</label>
   <div class='col-sm-4'>
    <cfinput type="text" class="form-control" name="captchaText" placeholder="Enter Captcha"  required="yes">
  </div>
    <div class='col-sm-5'></div>
  </div>

  <div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3 text-right" >Email</label>
   <div class='col-sm-4'>
    <cfinput type="email" class="form-control" name="mail_add" placeholder="Enter Email Address"  required="yes">
  </div>
    <div class='col-sm-5'></div>
  </div>
 <div class='form-group row pt-3'>
 
 <div class='col-sm-12 text-center'>
  <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-primary">
  </div>

  </div>
</cfform>
</div>
</div>
</div>

</body>

</html>




