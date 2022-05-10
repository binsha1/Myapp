<html>
      <head>
            <link rel="stylesheet" href = "css/style.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
            <title>Page Menu</title>            
      </head>
      <body>            
            <cfif structKeyExists(session, 'sessionUser')>
                  <cfset data=createObject("component","components.res")>
                  <cfset page_data=data.queryRes()>
                  <div class='container text-center '>
                        <h3 class='text-center text-success mt-5'><cfoutput>Welcome #session.sessionUser.user_name#</cfoutput>
                              <span class="lo-right"><a class='btn btn-success' href='cf_task28.cfm?logout'>Logout <i class="fa fa-sign-out"></i></a></span>
                        </h3>                        
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
</html>