<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>    
        <title>Subscribe Form</title>
    </head>
    <body class='bg-success'>
        <div class='container py-5'> 
            <div class="col-lg-6 offset-lg-3 bg-white p-5">
                <h3 class='text-center pb-3'>Subscribe Form </h3>
                <form method='post' action="components/res.cfc?method=subFunc" enctype="multipart/form-data" name="img_form">
                    <cfparam  name="save" default="v">
                    <cfif save EQ "1">
                        <div class="alert alert-success alert-dismissible ">
                            <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                Data saved successfully
                        </div>
                    </cfif>          
                    <div class="form-group row">
                        <label for="exampleInputEmail1" class="form-label col-sm-4" >First Name</label>
                        <div class='col-sm-8'>                            
                                <input type="text" class="form-control" name="first_name" placeholder="Enter First Name" id="f_name" required>                        
                        </div>                          
                    </div>                      
                    <div class="form-group row pt-3">
                        <label for="exampleInputEmail1" class="form-label col-sm-4 " >Email Address</label>
                        <div class='col-sm-8'>
                            <input type="email" class="form-control" name="email_id" placeholder="Enter Email Address" id='email_sub' required="yes" onenter="validateEmail();" >
                        </div>                           
                    </div>
                    <div class='form-group row pt-3'>                        
                        <div class='col-sm-12 text-center'>
                            <input type="submit" name="Submit"  value="Submit" class="btn btn-primary" id='submit_sub' disabled>
                        </div>
                    </div>
                </form>    
            </div>
        </div>
    </body>
    <script src="js/validate.js"></script>
</html>

