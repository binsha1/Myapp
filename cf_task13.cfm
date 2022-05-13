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
                <h1 class='text-center pb-3'>Text Form</h1>
                <div class="form-group row">
                    <label class="form-label col-sm-4" >Enter Text</label>
                    <div class='col-sm-8'>
                        <input type = "text" class='form-control' name = "tname" required = "Yes">
                    </div>
                </div>                
                <div class='form-group row pt-3'>
                    <div class='col-sm-12 text-center'>
                        <input type="Submit" name="Submit" value="Submit" class='btn btn-secondary'>
                    </div>
                </div>
                <div class="row">
                    <cfif structKeyExists(form, "Submit")>
                        <cfset textString=form.tname>                        
                        <cfset data=createObject("component","components.res")>                        
                        <cfset cnt=data.textFunc(textString)>
                        <cfif cnt GT 0>
                            <cfoutput>
                                <h3 class="text-success">Found keyword in #cnt# times</h3>
                            </cfoutput>
                        <cfelse>
                            <h3 class="text-danger">Keyword Not Found</h3>
                        </cfif>           
                    </cfif>
                </div>
            </form>            
        </div>
    </body>
</html>








