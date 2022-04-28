<html>
<head>
    <link rel="stylesheet" href = "css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>User Table</title>
</head>
<body>
<div class='container py-5 cform_div'>
    <h3 class='text-center'>Upload Image </h3>
    <form method='post' action="upload_img.cfm" enctype="multipart/form-data" name="img_form">
        <div class="form-group row">
            <label for="exampleInputEmail1" class="form-label col-sm-3" >Image Name</label>
            <div class='col-sm-9'>
                <input type="text" class="form-control" name="img_name" placeholder="Enter Text"  required="yes">
            </div>
        </div>
        <div class="form-group row pt-3">
              <label for="exampleInputEmail1" class="form-label col-sm-3" >Description</label>
              <div class='col-sm-9'>
                    <textarea  name="description" class='form-control' required='yes'> </textarea >
              </div>
        </div>
        <div class="form-group row pt-3">
            <label for="exampleInputEmail1" class="form-label col-sm-3" >Upload Image</label>
            <div class='col-sm-9'>
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
</body>
</html>






