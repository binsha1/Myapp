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
                <h1 class='text-center pb-3'>Number Form</h1>
                <div class="form-group row">
                    <label class="form-label col-sm-4" >Enter Number Less than 10</label>
                    <div class='col-sm-8'>
                        <input type = "number" class='form-control' name = "num" min="1" max="10" placeholder="Enter Number Less than 10" required = "Yes">
                    </div>
                </div>                
                <div class='form-group row pt-3'>
                    <div class='col-sm-12 text-center'>
                        <input type="Submit" name="Submit" value="Submit" class='btn btn-secondary'>
                    </div>
                </div>
               <cfif structKeyExists(form, "Submit")>
               <cfset num=form.num>                        
                <cfset data=createObject("component","components.res")>                        
                <cfset query_data=data.queryFunc()>                                     
                <div>
                  <table class="table table-bordered">
                  <h3 class="text-success">Data:  <h3>
                    <thead>
                      <tr>
                          <th>First Name</th>
                          <th>Last Name</th>
                      </tr>
                    </thead>
                    <tbody>
                        <cfoutput query="query_data">
                          <tr>
                              <td>#first_name#</td>
                              <td>#last_name#</td>
                          </tr>
                        </cfoutput>  
                      </tbody>
                    </table>
                    <h3> Data from row <cfoutput>#num#</cfoutput> is: </h3>
                    <cfset qdata = QueryGetRow(query_data, num) >
                    <cfdump var=#qdata#>
                  </div> 
                </cfif> 
              </form>             
            </div>
        
    </body>
</html>

