<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet"type="text/css" />
        <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"> </script>
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <title>Login Form</title>
    </head>
    <body class="bg-success" >
        <div class='container py-5'>
            <div class="col-lg-6 offset-lg-3 bg-white p-5 mt-5">
                <h3 class='text-center pb-3'>Login Form </h3>
                <cfif structKeyExists(URL, 'logout')>
                    <cfset authenticate_user=createObject("component","components.authenticateUser")>
                    <cfset userLogin=authenticate_user.doLogout()>
                <cfelseif structKeyExists(URL,"invalid")>             
                        <div class="alert alert-danger col-lg-6 offset-lg-3" role="alert">
                            Invalid Credentials
                        </div>                
                </cfif> 
                <form method='post'  action="components/res.cfc?method=loginFunc" name="img_form" >
                    <div class="form-group row">
                            <label for="exampleInputEmail1" class="form-label col-sm-3" >User Name</label>
                            <div class='col-sm-9'>
                                <input type="text" class="form-control" name="user_name" placeholder="Enter User Name" id="f_name" required="yes">
                            </div>
                    </div>
                    <div class="form-group row pt-3">
                            <label for="exampleInputEmail1" class="form-label col-sm-3" >Password</label>
                            <div class='col-sm-9'>
                                <input type="password" class="form-control" name="pwd" placeholder="Enter Password"  required="yes">
                            </div>
                    </div>          
                    <div class='form-group row pt-3'>            
                            <div class='col-sm-12 text-center'>
                                <input type="submit" name="Submit"  value="Sign In" class="btn btn-success" >
                            </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>







