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
                <h1 class='text-center pb-3'>Birthday Form</h1>
                <div class="form-group row">
                    <label class="form-label col-sm-4" >Enter User DOB</label>
                    <div class='col-sm-8'>
                        <input type = "date" class='form-control' name = "user_dob" required = "Yes">
                    </div>
                </div>
                <div class="form-group row pt-3">
                    <label class="form-label col-sm-4" >Enter Mother DOB</label>
                    <div class='col-sm-8'>
                        <input type = "date" class='form-control' name = "mom_dob" required = "Yes">
                    </div>
                </div>
                <div class='form-group row pt-3'>
                    <div class='col-sm-12 text-center'>
                        <input type="Submit" name="Submit" value="Submit" class='btn btn-secondary'>
                    </div>
                </div>
                <div class="row text-success">
                    <cfif structKeyExists(form, "Submit")>
                        <cfset user_dob=form.user_dob>
                        <cfset mom_dob=form.mom_dob>
                        <cfset data=createObject("component","components.res")>
                        <cfset dob_data=data.dateFunc(user_dob,mom_dob)>
                        <cfif  NOT arrayIsEmpty(dob_data)>
                            <cfoutput>
                                <h5>User's Age : #dob_data[1]#</h5>
                                <hr>
                                <h5> Delivery Age of mother  : #dob_data[2]#</h5>
                                <hr>
                                <h5>Days left for User Birthday : #dob_data[3]#</h5>
                                <h5>Days left for Mother's Birthday : #dob_data[4]#</h5>                        
                            </cfoutput>
                        </cfif>
                    </cfif>
                </div>
            </form>            
        </div>
    </body>
</html>