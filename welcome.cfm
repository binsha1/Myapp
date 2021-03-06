<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Welcome</title>
    </head>                
    <cfif structKeyExists(session, 'stLoggedInUser')> 
        <body>
            <div class="container py-5 w_div">
                <div class="col-lg-6 offset-lg-3">
                    <h3 class='text-center text-success'><cfoutput>Welcome #session.stLoggedInUser.user_name#</cfoutput>
                    </h3>
                    <div class="row">
                        <div class='col-lg-12 text-center'>
                        <a class='btn btn-success' href='cf_task27.cfm?logout'>Logout <i class="fa fa-sign-out"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </body>
    <cfelse>
        <cflocation url='cf_task27.cfm'>
    </cfif>    
</html>