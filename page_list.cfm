<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Page List</title>
</head>            
        <cfif structKeyExists(session, 'sessionUser')>        
            <cfquery name='page_data' datasource='cms_data'>
                SELECT * FROM cms_data.page
            </cfquery>
            <div class='container'>
                    <h3 class='text-center text-success mt-5'><cfoutput>Welcome #session.sessionUser.user_name#</cfoutput>
                    </h3>
                    <div class="row">
                            <div class='col-lg-12 text-center'>
                            <a class='btn btn-success' href='cf_task28.cfm?logout'>Logout</a>
                            </div>
                    </div>
                    
                    <div class='page_container p-5 bg-light'>
                    <cfif structKeyExists(URL, 'update')>               
                        <div class="alert alert-success alert-dismissible ">
                                      <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                      Updated Successfully
                        </div>
                    <cfelseif structKeyExists(URL, 'add')>
                            <div class="alert alert-success alert-dismissible ">
                                      <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                      Page Added Successfully
                        </div>
                    <cfelseif structKeyExists(URL, 'delete')>
                            <div class="alert alert-success alert-dismissible ">
                                      <a href="##" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                      Page Deleted Successfully
                        </div>                     
                    </cfif> 
                        <h3 class='text-center py-5'>Page Details</h3>
                        <a href='add.cfm' class='btn btn-success text-right mb-3'>+ Add New Page</a>
                        <table class='table table-bordered text-center '>
                        <thead class='bg-dark text-white'>
                            <tr>
                                <td>Page Name</td>
                                <td>Page Description</td>
                                <td>Edit</td>
                                <td>Delete</td>
                            </tr>
                        </thead>
                        <tbody>
                            <cfoutput query='page_data'>
                            <tr>
                                <td>#pagename#</td>
                                <td>#pagedesc#</td>
                                <td><a href='edit.cfm?id=#pageid#'class='btn btn-warning'>Edit</a></td>
                                <td><a href="delete.cfm?id=#pageid#"class='btn btn-danger'>Delete</a></td>
                            </tr>
                            </cfoutput>
                        </tbody>
                        </table>
                    </div>
            </div>
        </cfif>
