<head>
    <link rel="stylesheet" href = "css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Page Menu</title>
    <style>
          .btn-dark{
              width:30%;
          }
    </style>
</head>
<body>            
      <cfif structKeyExists(session, 'sessionUser')>
            <cfquery name='page_data' datasource='cms_data'>
                  SELECT * FROM cms_data.page 
            </cfquery>
      <div class='container text-center '>
            <h3 class='text-center text-success mt-5'><cfoutput>Welcome #session.sessionUser.user_name#</cfoutput>
            </h3>
            <div class="row">
                  <div class='col-lg-12 text-center'>
                      <a class='btn btn-success' href='cf_task28.cfm?logout'>Logout</a>
                  </div>
            </div>
            <div class=' page_container p-5 '>
                <h3 class='text-center py-5'>Page Details</h3>
                <table class='table table-bordered text-center '>
                      <tbody>
                          <cfoutput query='page_data'>
                          <tr>
                                <td ><a class='btn btn-dark' href='page_details.cfm?id=#pageid#'>#pagename#<a/></td>
                          </tr>
                          </cfoutput>
                      </tbody>
                </table>
            </div>        
        </div>
      </cfif>
</body>