<html>
<head>
<link rel="stylesheet" href="css/style.css">
</head>
<div class="date_class">
<p><cfoutput>Today's Date : #DateFormat(Now())#</cfoutput></p>

<p><cfoutput>Current Month in Numeric : #DateFormat(Now(),"mm")#</cfoutput></p>
<p><cfoutput>Current Month in Word : #DateFormat(Now(),"mmmm")#</cfoutput></p>

<cfset today=dayofweek(now())>
<cfset fridayNum=(6-today)-7>
<cfset fridayDate=dateAdd("d", fridayNum, Now())>
<p><cfoutput>Last Friday Date : #DateFormat(fridayDate)#</cfoutput></p>

<cfset dStartDate = createDate(year(now()), month(now()), 1 ) >
 
<cfset dEndDate = dateAdd('d', -1, dateAdd('m', 1, dStartDate )) >
<p>Last Day of Month: 
<cfoutput>
#DateFormat(dEndDate)#
</cfoutput></p>

<cfset fromDate = Now()-1> 
<cfset toDate = Now() - 5> 
Last Five Days:
<cfloop from="#fromDate#" to="#toDate#" index="i" step=-1 > 
   <p> 
   <cfif DateFormat(i,"dddd") eq "Monday">
  <p style="color:green;"> <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput> </p>
   <cfelseif DateFormat(i,"dddd") eq "Sunday">
   <p style="color:red;"> <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput> </p>
   <cfelseif DateFormat(i,"dddd") eq "Saturday">
   <p style="color:red;font-weight:bold;"> <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput> </p>
   <cfelseif DateFormat(i,"dddd") eq "Friday">
     <p style="color:blue"> <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput> </p>
    <cfelseif DateFormat(i,"dddd") eq "Thursday">
     <p style="color:black;font-weight:bold"> <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput> </p>
     <cfelseif DateFormat(i,"dddd") eq "Wednesday">
     <p style="color:yellow"> <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput> </p>
     <cfelseif DateFormat(i,"dddd") eq "Tuesday">
     <p style="color:orange"> <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput> </p>
   </cfif>
    <!--- <cfoutput>#DateFormat(i,"dd-mmm-yyyy -dddd")#</cfoutput> </p>--->
</cfloop>

</div>
</html>