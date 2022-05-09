<html>
  <head>
      <link rel="stylesheet" href="css/style.css">
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
      <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>
      <div class="date_class">  
            <cfset today=dayofweek(now())>
            <cfset fridayNum=(6-today)-7>
            <cfset fridayDate=dateAdd("d", fridayNum, Now())>
            <cfset dStartDate = createDate(year(now()), month(now()), 1 ) >
            <cfset dEndDate = dateAdd('d', -1, dateAdd('m', 1, dStartDate )) >
            <cfset fromDate = Now()-1> 
            <cfset toDate = Now() - 5> 
            <cfoutput>
                  <p>Today's Date : #DateFormat(Now())#</p>
                  <p>Current Month in Numeric : #DateFormat(Now(),"mm")#</p>
                  <p>Current Month in Word : #DateFormat(Now(),"mmmm")#</p>
                  <p>Last Friday Date : #DateFormat(fridayDate)#</p>
                  <p>Last Day of Month: #DateFormat(dEndDate)#</p>
                  <p>Last Five Days:</p>
                  <cfloop from="#fromDate#" to="#toDate#" index="i" step=-1 > 
                        <cfif DateFormat(i,"dddd") eq "Monday">
                            <p class="text-success"> #DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Sunday">
                            <p class="text-danger">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Saturday">
                            <p class="sat_color"> #DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Friday">
                            <p class="text-primary">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Thursday">
                            <p class="thu_color">#DateFormat(i,"dd-mmm-yyyy -dddd")#</p>
                        <cfelseif DateFormat(i,"dddd") eq "Wednesday">
                            <p class="text-warning">#DateFormat(i,"dd-mmm-yyyy -dddd")# </p>
                        <cfelseif DateFormat(i,"dddd") eq "Tuesday">
                            <p class="tue_color"> #DateFormat(i,"dd-mmm-yyyy -dddd")# </p>
                        </cfif>                      
                  </cfloop>
                </cfoutput>
        </div>
  </body>
</html>