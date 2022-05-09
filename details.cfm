<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <title>User Table</title>
    </head>
    <body>
        <cfparam name='img_id' type='integer'>
        <cfquery name='img_details' datasource='img_data'>
            SELECT * FROM img_table WHERE id=<cfqueryparam value="#img_id#" cfsqltype="CF_SQL_VARCHAR"> 
        </cfquery>

        <cfoutput query='img_details'>
            <div class='container text-center table_container py-5'>
            <h3 class='text-center pb-5'>Image Details</h3>
            <table class='table table-bordered '>
                <tbody>
                <tr>
                    <td>Image Name</td>
                    <td>#img_name#</td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>#description#</td>
                </tr>
                <tr>
                    <cfset path= expandPath("./uploads")  & "\" & file_name>
                    <td>File</td>
                    <td><cfimage source="#path#" action="writeToBrowser" height="200vh" width="400"></td>
                </tr>
                </tbody>
            </table>
        </div>
        </cfoutput>
    </body>
</html>