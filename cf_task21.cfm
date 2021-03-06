<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <title>Captcha Form</title>
    </head>
    <body class='bg-success'>
        <div class='container py-5'> 
            <div class="col-lg-6 offset-lg-3 bg-white p-5">
                <h3 class='text-center pb-3'>Birthday Form</h3>
                <form method='post' action="components/res.cfc?method=birthWishes" enctype="multipart/form-data" name="img_form">
                    <cfif structKeyExists(session,"birthday")>
                        <cfif session.birthday EQ "false">
                            <div class="alert alert-danger alert-dismissible ">
                                <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                Please Upload File!
                            </div>
                        <cfelse>
                            <div class="alert alert-success alert-dismissible ">
                                <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    Birthday wish sent successfully
                            </div>
                        </cfif>                               
                    </cfif>
                    <div class="form-group row">
                        <label for="exampleInputEmail1" class="form-label col-sm-4" >Birthday Baby Name</label>
                        <div class='col-sm-8'>                            
                            <input type="text" class="form-control" name="baby_name" placeholder="Enter Birthday Baby Name"  required="yes">
                        </div>                          
                    </div>
                    <div class="form-group row pt-3">
                        <label for="exampleInputEmail1" class="form-label col-sm-4" >Birthday Baby Email ID</label>
                        <div class='col-sm-8'>
                            <input type="text" class="form-control" name="baby_mail" placeholder="Enter Birthday Baby Email ID"  required="yes">
                        </div>                           
                    </div>
                    <div class="form-group row pt-3">
                        <label for="exampleInputEmail1" class="form-label col-sm-4 " >Birthday Wishes</label>
                        <div class='col-sm-8'>
                            <textarea  name="b_wishes" class='form-control' required='yes'> </textarea >
                        </div>                           
                    </div>
                    <div class="form-group row pt-3">
                        <label for="exampleInputEmail1" class="form-label col-sm-4 " >Greeting Image</label>
                        <div class='col-sm-8'>
                            <input type='file' name='img_file' accept='.jpg,.png,.gif'>
                        </div>                           
                    </div>
                    <div class='form-group row pt-3'>                        
                        <div class='col-sm-12 text-center'>
                            <input type="submit" name="Submit"  value="Submit" class="btn btn-primary">
                        </div>
                    </div>
                </form>    
            </div>
        </div>
    </body>
</html>
