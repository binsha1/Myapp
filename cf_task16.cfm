<cfset l =3>
<cfloop from="1" to="3" index="i">        
    <cfloop from="1" to="3" index="j" >
          <cfoutput>#i# &nbsp;</cfoutput>
          <cfset  i= (i + l)>
      </cfloop>                   
    <cfoutput> <br></cfoutput>    
</cfloop>