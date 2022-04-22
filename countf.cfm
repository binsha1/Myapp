
<head>
<link rel="stylesheet" href = "css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>User Table</title>

</head>

<cfquery name='page' datasource='word_data'>
SELECT * FROM read_data.read_count 

</cfquery>

<cfparam  name="desc">
<cfset wordData=createObject("component", "components.tagCloud")>
<cfset structData=wordData.init("#desc#")>
<cfset cnt=structCount(structData)>
<cfset sortData=StructSort(structData,"numeric","desc")>



<cfset newStruct=structNew()>


 <cfloop array="#sortData#" index="i">
        <cfset len=Len(#i#)>
        <cfset StructInsert(newStruct,"#i#",Len(#i#),false)>
      

</cfloop>

<cfset sortLen=StructSort(newStruct,"numeric","desc")>

<cfoutput>
<h3>Result in alphabetical Order</h3>

</cfoutput>
<cfloop query="page" >



<cfif isNumeric('#page.word_name#') EQ 'NO'>
    <cfif #structData["#page.word_name#"]# GT 3>
        <cfif structKeyExists(structData, #page.word_name#)>
               
            <cfif #structData["#page.word_name#" ]#  EQ 7>
            <cfoutput>      
               <h1 class='text-success'> 
               -#page.word_name# ( #structData["#page.word_name#" ]#)
                        
               </h1>
                </cfoutput>
               
               <cfelseif #structData["#page.word_name#" ]#  EQ 6>
                <cfoutput>      
               <h2 class='text-primary'> 
               -#page.word_name# ( #structData["#page.word_name#" ]#)
                        
               </h2>
                </cfoutput>
                <cfelseif #structData["#page.word_name#" ]#  EQ 5>
                <cfoutput>      
               <h3 class='text-warning'> 
              -#page.word_name# ( #structData["#page.word_name#" ]#)
                        
               </h3>
                </cfoutput>
                <cfelseif #structData["#page.word_name#" ]#  EQ 4>
                <cfoutput>      
               <h4 class='text-danger'> 
               -#page.word_name# ( #structData["#page.word_name#" ]#)
                        
               </h4>
                </cfoutput>
            </cfif>


        </cfif>

    </cfif>
</cfif>


</cfloop>

<!----Sorting in descending order of keys---->

<cfoutput>
<h3>Result  in decreasing order of the count of words </h3>
</cfoutput>
<cfloop array="#sortData#" index="i" >

<cfif isNumeric('#i#') EQ 'NO'>
    <cfif #structData["#i#"]# GT 3>
    <cfif structKeyExists(structData, #i#)>
              
            <cfif #structData["#i#" ]#  EQ 7>
            <cfoutput>      
               <h1 class='text-success'> 
               -#i# ( #structData["#i#" ]#)
                        
               </h1>
                </cfoutput>
               
               <cfelseif #structData["#i#" ]#  EQ 6>
                <cfoutput>      
               <h2 class='text-primary'> 
               -#i# ( #structData["#i#" ]#)
                        
               </h2>
                </cfoutput>
                <cfelseif #structData["#i#" ]#  EQ 5>
                <cfoutput>      
               <h3 class='text-warning'> 
               -#i# ( #structData["#i#" ]#)
                        
               </h3>
                </cfoutput>
                <cfelseif #structData["#i#" ]#  EQ 4>
                <cfoutput>      
               <h4 class='text-danger'> 
               -#i# ( #structData["#i#" ]#)
                        
               </h4>
                </cfoutput>
            </cfif>
       </cfif>

    </cfif>
</cfif>

</cfloop>

<!----Result in decreasing order of length of the text---->

<cfoutput>
<h3>Result  in decreasing order of the length of the text </h3>
</cfoutput>
<cfloop array="#sortLen#" index="i" >

<cfif isNumeric('#i#') EQ 'NO'>
    <cfif #structData["#i#"]# GT 3>
        <cfif structKeyExists(structData, #i#)>
                
            <cfif #structData["#i#" ]#  EQ 7>
            <cfoutput>      
               <h1 class='text-success'> 
               -#i# ( #structData["#i#" ]#)
                        
               </h1>
                </cfoutput>
               
               <cfelseif #structData["#i#" ]#  EQ 6>
                <cfoutput>      
               <h2 class='text-primary'> 
               -#i# ( #structData["#i#" ]#)
                        
               </h2>
                </cfoutput>
                <cfelseif #structData["#i#" ]#  EQ 5>
                <cfoutput>      
               <h3 class='text-warning'> 
               -#i# ( #structData["#i#" ]#)
                        
               </h3>
                </cfoutput>
                <cfelseif #structData["#i#" ]#  EQ 4>
                <cfoutput>      
               <h4 class='text-danger'> 
               -#i# ( #structData["#i#" ]#)
                        
               </h4>
                </cfoutput>
            </cfif>
        </cfif>

    </cfif>
</cfif>

</cfloop>
