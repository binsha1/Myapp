<html>

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

<cfloop list="#skeys#" index="i">
   

<cfquery name="word" datasource="word_data">
INSERT INTO word_data.word_count(word_name) VALUES('#i#' )
</cfquery>
</cfloop>

<cflocation url="count.cfm?desc='#form.description#">
</cfif>





