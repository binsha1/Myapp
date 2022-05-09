<html>
    <head>
        <title>Input Form</title>
        <link rel="stylesheet" href="css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body class='bg-success'>
        <div class='container py-5' >
            <cfif structKeyExists(url, "status") >
                <cfif url.status NEQ "Error">
                    <cfoutput>         
                    <div class="alert alert-success alert-dismissible col-lg-6 offset-lg-3">
                        <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        #url.status#
                    </div>            
                    </cfoutput>
                    <cfelse>
                    <div class="alert alert-danger alert-dismissible col-lg-6 offset-lg-3">
                        <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        Invalid Number
                    </div>
                </cfif>
            </cfif>           
            <form name="nform" method="post" action="components/res.cfc?method=numStatus2" class='col-lg-6 offset-lg-3 bg-white p-5'>
                <h1 class='text-center pb-3'>Input Form</h1>
                <div class="form-group row">
                    <label class="form-label col-sm-4" >Enter Number</label>
                    <div class='col-sm-8'>
                        <input type = "number" class='form-control' name = "Number" min="1" max="5"
                         required = "Yes" >
                    </div>
                </div>
                <div class='form-group row pt-3'>
                    <div class='col-sm-12 text-center'>
                        <input type="Submit" name="SubmitBtn" value="Submit" class='btn btn-secondary'>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>