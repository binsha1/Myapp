<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script src="js/validate.js"></script>
  <title>Word Count</title>
</head>
<body class='bg-success'>
        <div class='container py-5'> 
            <div class="col-lg-6 offset-lg-3 bg-white p-5">
                  <h3 class='text-center pb-3'>Word Count  </h3>
                  <form method='post' action="components/res.cfc?method=wordFunc" enctype="multipart/form-data" name="img_form">
                            
                      <div class="form-group row">
                          <label for="exampleInputEmail1" class="form-label col-sm-4" >Enter Text</label>
                          <div class='col-sm-8'>                            
                               <textarea  name="description" class='form-control' required='yes'></textarea >
                      </div>            
                      <div class='form-group row pt-3'>                        
                        <div class='col-sm-12 text-center'>
                            <input type="submit" name="Submit"  value="Submit" class="btn btn-primary" >
                        </div>
                      </div>
                  </form>    
                </div>
</body>
</html>