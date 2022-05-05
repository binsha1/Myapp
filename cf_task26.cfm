<html>
<head>
      <link rel="stylesheet" href = "css/style.css">
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
      <title>Upload File</title>
</head>
<body>
<div class='container py-5 cform_div'>
    <h3 class='text-center'>Word Count</h3>
    <form method='post' action="components/res.cfc?method=wordFunc2" enctype="multipart/form-data" name="img_form" class='col-lg-6 offset-lg-3'>
        <div class="form-group row pt-3">
            <label for="exampleInputEmail1" class="form-label col-sm-3" >Upload File</label>
            <div class='col-sm-6'>
                  <input type='file' name='doc_file' accept='.doc,.txt,.pdf'>
            </div>
            <div class='col-sm-3'>
              <input type="submit" name="Submit"  value="Submit" class="btn btn-primary">
            </div>
      </div>  
    </form>
</div>
</body>
</html>
