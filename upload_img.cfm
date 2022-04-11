<cfset thisDir = expandPath("./uploads")>
<cfif structKeyExists(form,"img_file")>
<!--- Use the cffile tag to upload the image file. --->
<cffile action="upload" fileField="form.img_file"  destination="#thisDir#" result="fileUpload"
nameconflict="overwrite">

<cfif fileUpload.fileWasSaved>
<cfset path=fileupload.serverdirectory & "/" & fileupload.serverfile>

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
<cfset newImageName = path & "_thumbnail." &fileUpload.serverFileExt>

<cfimage source="#myImage#" action="write"
destination="#newImageName#" overwrite="yes">

<cfoutput>
File Uploaded and thumbnail created!!

<img src="#newImageName#">
</cfoutput>

</cfif>
</cfif>
</cfif>
