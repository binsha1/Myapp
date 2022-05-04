<cfset formNum=form.Number>
<div class='cf_class'>
        <cfif formNum eq 1>
         Ok
        
        <cfelseif formNum eq 2>
         Ok
        
        <cfelseif formNum eq 3>
         Fair
        
        <cfelseif formNum eq 4>
         Good
         
        <cfelse>
        Very Good
        </cfif>
</div>