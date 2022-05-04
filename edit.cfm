<html>
<cfif structKeyExists(session, 'sessionUser')>
        <cfparam  name="id">

        <head>
            <link rel="stylesheet" href = "css/style.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
            <title>Edit Form</title>
        </head>
        <body>
              <cfquery name="update_data" datasource="cms_data"> 
                  SELECT * FROM cms_data.page
                  WHERE pageid = <cfqueryparam value="#id#" cfsqltype="CF_SQL_INTEGER">
              </cfquery> 
              <cfoutput query="update_data">
              <div class='container py-5 cform_div'>
                  <h3 class='text-center'>Update Page </h3>
                  <form method='post' action="components/res.cfc?method=updatePage"  name="img_form">
                    <div class="form-group row">
                          <label for="exampleInputEmail1" class="form-label col-sm-3" >Page Name</label>
                          <div class='col-sm-9'>
                                <input type="text" class="form-control" name="pagename" placeholder="Enter Page Name" value="#pagename#" >
                                <input type="hidden" name="id" value="#id#">
                          </div>
                    </div>
                    <div class="form-group row pt-3">
                        <label for="exampleInputEmail1" class="form-label col-sm-3" >Page Description</label>
                        <div class='col-sm-9'>
                              <textarea  name="pagedesc" class='form-control' required='yes'> #pagedesc#
                            </textarea >
                        </div>
                    </div>                    
                  <div class='form-group row pt-3'>                  
                      <div class='col-sm-12 text-center'>
                              <input type="submit" name="Submit"  value="Submit" class="btn btn-primary">
                        </div>
                  </div>
              </form>

            </div>
            </cfoutput>
            </body>
      <!---
        <cfif structKeyExists(form, "Submit")>
        <cfquery  name="update_data" datasource="cms_data">
        UPDATE cms_data.page SET pagename='#form.pagename#' , pagedesc='#form.pagedesc#' WHERE pageid='#id#' 

        </cfquery>  
        <cfoutput>'<script>alert('Page Updated Successfully!');window.location.href='page_list.cfm'</script>'
        </cfoutput>
        </cfif>
  </cfif>--->

</cfif>

</html>







