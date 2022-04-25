<html>
    <head>
    <title>Input Form</title>
    <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class='cf_class'>
        <h1>Input Form</h1>

        <cfform name="nform" method="post" action="res1.cfm">
           <label>Number: </label> 
           <cfinput type = "Text" name = "Number" range = "1,5" message = "You must enter an integer from 1 to 5" 
   validate = "integer" required = "Yes" >
            <br>
            <cfinput type="Submit" name="SubmitBtn" value="Submit">
        </cfform>
        

    </div>
    </body>

    </html>