<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="js/validate.js"></script>
        <title>Number Form</title>
    </head>
    <body class='bg-success'>
        <div class='container py-5'> 
            <div class="col-lg-6 offset-lg-3 bg-white p-5">
                <form name="nform" method="post" action="components/res.cfc?method=cookieFunc" >                                 
                    <div class='form-group row pt-3'>
                        <div class='col-sm-12 text-center'>
                            <input type="Submit" name="Submit" value="Submit" class='btn btn-secondary' onclick="return validateInput();">
                        </div>
                    </div>        
                </form>               
                
                <cfif structKeyExists(session, "c_name")>
                    <cfset cookie_value=session.c_name>
                    <div class="row">
                        <cfoutput>
                              <p class="text-center text-success">Cookie Value: #cookie_value# </p>
                        </cfoutput>
                    </div>
                </cfif>                
            </div>
        </div>
    </body> 
</html>

