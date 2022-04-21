<cfquery name='page' datasource='word_data'>
SELECT * FROM word_data.word_count ORDER BY word_name DESC

</cfquery>

<cfparam  name="desc">
<cfset wordData=createObject("component", "components.tagCloud")>
<cfset structData=wordData.init("#desc#")>
<<<<<<< HEAD

=======
<cfset sortData=StructSort(structData,"numeric","desc")>



<cfdump var='#sortData#'>
>>>>>>> 6bcd5a39d6a56954c7c20329cd63921d0f1ff7bd
<cfoutput>
<h3>Words in alphabetical Order</h3>
</cfoutput>
<cfloop query="page" >



<cfif isNumeric('#page.word_name#') EQ 'NO'>
    <cfif #structData["#page.word_name#"]# NEQ 3>
        <cfif structKeyExists(structData, #page.word_name#)>
            <cfoutput>

            <p>-#page.word_name# ( #structData["#page.word_name#" ]#)</p>
            
            </cfoutput>
        </cfif>

    </cfif>
</cfif>
<!---<cfloop collection="#structData#" item="key" >
 <cfset num= QueryGetRow(#page#,1)>
   <cfoutput>#page[word_name]#:</cfoutput>
        <cfoutput>#Key#:</cfoutput>
  <cfdump var="#structData[key]#">
        <br/>
</cfloop>--->

</cfloop>

<!----Sorting in descending order of keys---->

<cfoutput>
<h3>Sorting in descending order of count </h3>
</cfoutput>
<cfloop query="page" >



<cfif isNumeric('#page.word_name#') EQ 'NO'>
    <cfif #structData["#page.word_name#"]# NEQ 3>
        <cfif structKeyExists(structData, #page.word_name#)>
            <cfoutput>

            <p>-#page.word_name# </p>
            
            </cfoutput>
        </cfif>

    </cfif>
</cfif>
<!---<cfloop collection="#structData#" item="key" >
 <cfset num= QueryGetRow(#page#,1)>
   <cfoutput>#page[word_name]#:</cfoutput>
        <cfoutput>#Key#:</cfoutput>
  <cfdump var="#structData[key]#">
        <br/>
</cfloop>--->

</cfloop>
