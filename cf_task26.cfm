<html>

<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>Upload File</title>

</head>


<body>
<div class='container py-5 cform_div'>


<h3 class='text-center'>Word Count</h3>

<cfform method='post' action="" enctype="multipart/form-data" name="img_form" class='col-lg-6 offset-lg-3'>
  
  <div class="form-group row pt-3">
    <label for="exampleInputEmail1" class="form-label col-sm-3" >Upload File</label>
   <div class='col-sm-6'>
    <cfinput type='file' name='doc_file' accept='.doc,.txt,.pdf'>
  </div>
  <div class='col-sm-3'>
    <cfinput type="submit" name="Submit"  value="Submit" class="btn btn-primary">
  </div>
  </div>
 <div class='form-group row pt-3'>
 
 <div class='col-sm-12 text-center'>
  
  </div>

  </div>
</cfform>

</div>

</body>

</html>

<cfif structKeyExists(form, "Submit")>

    <cfset thisDir = expandPath("./uploads")>
    <cfif len(trim(form.doc_file)) >
            <cffile action="upload" fileField="form.doc_file"  destination="#thisDir#" result="fileUpload"
            nameconflict="overwrite">

            <cfset file_name=#fileupload.serverfile# >
         
            <cfset fileLoc=fileupload.serverDirectory & '\' & fileupload.serverfile >
      
         
            <cffile action="read" file="#fileLoc#" variable="Contents">
            <cfset wordData=createObject("component", "components.tagCloud")>
            <cfset structData=wordData.init(#Contents#)>

            <cfset skeys=structKeyList(structData)>

            <cfloop list="#skeys#" index="i">
            

            <cfquery name="word" datasource="read_data">
            INSERT INTO read_data.read_count(word_name) VALUES('#i#' )
            </cfquery>
            </cfloop>

            <cflocation url="countf.cfm?desc='#Contents#">
           

            
            <cfelse>
            <cfoutput>'<script>alert('Please Upload File!')</script>'
            </cfoutput>
    </cfif>

</cfif>



