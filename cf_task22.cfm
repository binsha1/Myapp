<head>
    <link rel="stylesheet" href = "css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Json Table</title>
</head>

<cfset data=createObject("component","components.res")>
<cfset dData=data.jsonFunc()>
<div class='container py-5'>
    <h3 class='text-success'>JSON DATA IN TABLE </h3>
    <table class='table table-bordered'>
    <thead class='bg-dark text-white'>
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Location</th>
        </tr>
        </thead>
        <cfloop array ="#dData#" index="i">
        <cfoutput>
        <tbody>
        <tr>
            <td>#i.Name#</td>
            <td>#i.Age#</td>
            <td>#i.LOCATION#</td>
        </tr>
        </cfoutput>
        </cfloop>
        </tbody>
    </table>
</div>