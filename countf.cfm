<head>
    <link rel="stylesheet" href = "css/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <title>Word Count</title>
</head>
<cfquery name='page' datasource='read_data'>
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
<h3>Result in alphabetical Order</h3>
<cfloop query="page" >
<cfif isNumeric('#page.word_name#') EQ 'NO'>
    <cfif Len('#page.word_name#') GT 3>
        <cfif structKeyExists(structData, #page.word_name#)> 
             <cfoutput>               
            <cfif #structData["#page.word_name#" ]#  EQ 5>                
               <h1 class='text-secondary'> 
               -#page.word_name# ( #structData["#page.word_name#" ]#)                        
               </h1>                
            <cfelseif #structData["#page.word_name#" ]#  EQ 4>                      
               <h2 class='text-danger'> 
               -#page.word_name# ( #structData["#page.word_name#" ]#)                        
               </h2>               
            <cfelseif #structData["#page.word_name#" ]#  EQ 3>                     
               <h3 class='text-warning'> 
               -#page.word_name# ( #structData["#page.word_name#" ]#)                        
               </h3>                
            <cfelseif #structData["#page.word_name#" ]#  EQ 2>                 
               <h4 class='text-success'> 
              -#page.word_name# ( #structData["#page.word_name#" ]#)                        
               </h4>                
            <cfelseif #structData["#page.word_name#" ]#  EQ 1>                
               <h5 class='text-primary'> 
               -#page.word_name# ( #structData["#page.word_name#" ]#)                        
               </h5>                
            </cfif>
            </cfoutput>
        </cfif>
    </cfif>
</cfif>
</cfloop>

<!----Sorting in descending order of keys---->

<h3>Result  in decreasing order of the count of words </h3>
<cfloop array="#sortData#" index="i" >
<cfif isNumeric('#i#') EQ 'NO'>
    <cfif Len('#i#') GT 3>
    <cfif structKeyExists(structData, i)>
            <cfoutput>
            <cfif #structData["#i#" ]#  EQ 5>                  
               <h1 class='text-secondary'> 
               -#i# ( #structData["#i#" ]#)                        
               </h1>                
            <cfelseif #structData["#i#" ]#  EQ 4>                     
               <h2 class='text-danger'> 
               -#i# ( #structData["#i#" ]#)                        
               </h2>                
            <cfelseif #structData["#i#" ]#  EQ 3>                  
               <h3 class='text-warning'> 
               -#i# ( #structData["#i#" ]#)                        
               </h3>                
            <cfelseif #structData["#i#" ]#  EQ 2>                      
               <h4 class='text-success'> 
              -#i# ( #structData["#i#" ]#)                        
               </h4>
            <cfelseif #structData["#i#" ]#  EQ 1>                 
               <h5 class='text-primary'> 
               -#i# ( #structData["#i#" ]#)                        
               </h5>                
            </cfif>            
            </cfoutput>
       </cfif>
    </cfif>
</cfif>
</cfloop>

<!----Result in decreasing order of length of the text---->
<h3>Result  in decreasing order of the length of the text </h3>
<cfloop array="#sortLen#" index="i" >
<cfif isNumeric('#i#') EQ 'NO'>
    <cfif Len('#i#') GT 3>
        <cfif structKeyExists(structData, #i#)>
            <cfoutput>
            <cfif #structData["#i#" ]#  EQ 5>                  
               <h1 class='text-secondary'> 
               -#i# ( #structData["#i#" ]#)                        
               </h1>                
            <cfelseif #structData["#i#" ]#  EQ 4>                     
               <h2 class='text-danger'> 
               -#i# ( #structData["#i#" ]#)                        
               </h2>                
            <cfelseif #structData["#i#" ]#  EQ 3>                  
               <h3 class='text-warning'> 
               -#i# ( #structData["#i#" ]#)                        
               </h3>                
            <cfelseif #structData["#i#" ]#  EQ 2>                      
               <h4 class='text-success'> 
              -#i# ( #structData["#i#" ]#)                        
               </h4>
            <cfelseif #structData["#i#" ]#  EQ 1>                 
               <h5 class='text-primary'> 
               -#i# ( #structData["#i#" ]#)                        
               </h5>                
            </cfif>            
            </cfoutput>
       </cfif>
    </cfif>
</cfif>

</cfloop>
