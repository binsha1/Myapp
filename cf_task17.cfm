<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="js/validate.js"></script>
        <title>Number Form</title>
    </head>
    <body class='bg-success'>
        <div class='container py-5'> 
            <div class="col-lg-6 offset-lg-3 bg-white p-5">
                <form name="nform" method="post" action="components/res.cfc?method=evenOdd" >
                    <h1 class='text-center pb-3'>Text Form</h1>
                    <div class="form-group row">
                        <label class="form-label col-sm-4" >Enter Numeric Value</label>
                        <div class='col-sm-8'>
                            <input type = "text" class='form-control' name = "num_value" id="num" required = "Yes" placeholder="Enter Numeric Value">
                        </div>
                    </div>                
                    <div class='form-group row pt-3'>
                        <div class='col-sm-12 text-center'>
                            <input type="Submit" name="Submit" value="Submit" class='btn btn-secondary' onclick="return validateInput();">
                        </div>
                    </div>        
                </form>               
                
                <cfif structKeyExists(session, "nArray")>
                        <div class="row text-center">
                            <cfloop array="#session.nArray#" index="i">
                                <cfoutput>
                                <cfif i mod 2 EQ 0>
                                        <span class="evenNum ">#i#</span>
                                <cfelse>
                                        <span class="oddNum">#i#</span>
                                </cfif>
                                </cfoutput>                                
                            </cfloop>
                        </div>
                </cfif>
                </div>
            </div>
        </div>
    </body> 
</html>