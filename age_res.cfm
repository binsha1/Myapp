<head>
    <link rel="stylesheet" href="css/style.css">
</head>
<div class='cf_class'>
    <cfset user_dob=form.user_dob>
    <cfset mom_dob=form.mom_dob>

    <cfset current_year=DateFormat(Now(),"yyyy")>
    <cfset user_year=DateFormat(user_dob,"yyyy")>
    <cfset user_month=DateFormat(user_dob,"mm")>
    <cfset user_day=DateFormat(user_dob,"dd")>

    <cfset mom_year=DateFormat(mom_dob,"yyyy")>
    <cfset mom_month=DateFormat(mom_dob,"mm")>
    <cfset mom_day=DateFormat(mom_dob,"dd")>

    <cfset user_age=dateDiff("d", user_year, current_year)>
    <cfset deliver_age=dateDiff("d", mom_year, user_year)>
    <p>User Age: <cfoutput> #user_age#</cfoutput></p>
    <p>Mother Deliver Age: <cfoutput> #deliver_age# </cfoutput></p>
    <cfset user_bdy=CreateDate(current_year,user_month,user_day)>
    <cfset mom_bdy=CreateDate(current_year,mom_month,mom_day)>
    <cfset user_count=dateDiff("d",  now(), user_bdy)>
    <cfset mom_count=dateDiff("d",  now(), mom_bdy)>
    <p>Day's left for user birthday: <cfoutput>
    #user_count#
    </cfoutput></p>
    <p>Day's left for mother's birthday: <cfoutput>
    #mom_count#
    </cfoutput></p>
    <cfdump  var="#cgi#">
</div>