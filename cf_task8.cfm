<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    </head>
    <body class='bg-success'>
        <div class='container py-5' > 
            <form name="nform" method="post" action="" class='col-lg-6 offset-lg-3 bg-white p-5'>
                <h1 class='text-center pb-3'>Structure Form</h1>
                <div class="form-group row">
                    <label class="form-label col-sm-4" >Enter Key</label>
                    <div class='col-sm-8'>
                        <input type = "text" class='form-control' name = "key_name" required = "Yes">
                    </div>
                </div>
                <div class="form-group row pt-3">
                    <label class="form-label col-sm-4" >Enter Value</label>
                    <div class='col-sm-8'>
                        <input type = "text" class='form-control' name = "value_name" required = "Yes">
                    </div>
                </div>
                <div class='form-group row pt-3'>
                    <div class='col-sm-12 text-center'>
                        <input type="Submit" name="Submit" value="Submit" class='btn btn-secondary'>
                    </div>
                </div>
                <div class="row text-success">
                    <cfif structKeyExists(form, "Submit")>
                        <cfset key=form.key_name>
                        <cfset value=form.value_name>
                        <cfset data=createObject("component","components.res")>
                        <cfset struct_data=data.structFunc3(key,value)>
                        <cfdump var="#struct_data#">                       
                    </cfif>
                </div>
            </form>            
        </div>
    </body>
</html>