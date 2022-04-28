
<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>
<cfset thisDir = expandPath("./uploads")>
<cfif structKeyExists(form,"img_file")>
<!--- Use the cffile tag to upload the image file. --->
<cffile action="upload" fileField="form.img_file"  destination="#thisDir#" result="fileUpload"
nameconflict="overwrite">


<cfquery name="img_data" datasource="img_data"> 
INSERT INTO img_data.img_table(img_name,description,file_name)
VALUES ('#Form.img_name#', '#Form.description#', '#fileupload.serverfile#') 
</cfquery> 

<cfif fileUpload.fileWasSaved>
<cfset path=fileupload.serverdirectory & "\" & fileupload.serverfile>

<cfif not IsImageFile(path)>
<cfset errors = "Invalid Image!<br />"> <!--- clean up ---> 
<cffile action="delete" file="#path#">
<!---<cfimage action="read" source="#fileUpload.serverfile#" name="myImage">
<cfoutput>#ImageGetHeight(myImage)# </cfoutput>
<cfif ImageGetHeight(myImage) gt 2000 or ImageGetWidth(myImage) gt 2000>
#Width and height not in format#
</cfif>--->

<cfelseif fileupload.filesize gt 1000000>

<cfoutput>

File larger than 1MB.Upload image size lesse than 1MB
</cfoutput>

<cfelse>
<cfimage action="read" source="#path#" name="myImage">
<cfset ImageScaleToFit(myImage,20,20,"bilinear")>

<cfset newImageName =fileupload.serverdirectory & "\" & fileupload.serverFileName & "_thumbnail." &fileUpload.serverFileExt>

<cfimage source="#myImage#" action="write" destination="#newImageName#" overwrite="yes">

<cfoutput>

<div class='d-flex flex-column justify-content-center align-items-center'>
<p class=' text-success font-weight-bold'>
File Uploaded and thumbnail created!!
<p>
<cfimage source="#newImageName#" action="writeToBrowser">
</div>
</cfoutput>

</cfif>
</cfif>
</cfif>

<cfquery name="img_data" datasource="img_data">
 SELECT *
         FROM img_table
</cfquery>
<div class='container py-5'>
<table class='table table-bordered'>


<tr>
<th>Img Name</th>
<th>Thumbnail Image</th>

</tr>
<cfoutput query="img_data">
<tr><td>
#img_name#</td>
<cfset FileName = ListDeleteAt(file_name, ListLen(file_name, "."), ".")>
<cfset extn=ListDeleteAt(file_name, 1,".")>


<cfset thumbail_path=fileupload.serverdirectory & "\" & FileName & "_thumbnail." &extn>
<td><a href='details.cfm?img_id=#id#'><cfimage source="#thumbail_path#" action="writeToBrowser"></a>
</td></tr>
</cfoutput>
</table>
