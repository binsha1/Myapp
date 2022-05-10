<html>
    <head>
            <link rel="stylesheet" href = "css/style.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <title>Page Details</title>
    </head>
    <body class="bg-success">            
        <cfif structKeyExists(session, 'sessionUser')>
            <cfparam name='id' type='integer' default="value">
            <cfset data=createObject("component","components.res")>
            <cfset page_data=data.queryRes2(id)>
            <cfoutput query='page_data'>
                <div class='container py-5'>
                    <div class="col-lg-6 offset-lg-3 bg-white p-5 mt-5">
                        <div class="row lo-right">
                              <div class='col-lg-12 '>
                                    <a class='btn btn-success' href='cf_task28.cfm?logout'>Logout <i class="fa fa-sign-out"></i></a>
                              </div>
                        </div>
                        <h3 class='text-center pb-5'>Page Details</h3>                        
                        <table class='table table-bordered '>
                            <tbody>
                                <tr>
                                    <td>Page Name</td>
                                    <td>#pagename#</td>
                                </tr>
                                <tr>
                                    <td>Page Description</td>
                                    <td>#pagedesc#</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </cfoutput>
        </cfif>
    </body>
</html>