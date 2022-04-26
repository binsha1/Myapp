<html>
    <head>
    <title>Input Form</title>
    <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class='cf_class'>
        <h1>Input Form</h1>

        <cfform name="pform" action="divide.cfm" method="post">
           <label>Number: </label> 
           <cfinput type = "Text" name = "Number"  required = "Yes" >
            <br>
            <cfinput type="Submit" name="SubmitBtn" value="Submit">
            

        </cfform>
        
    </div>
    </body>

    </html>