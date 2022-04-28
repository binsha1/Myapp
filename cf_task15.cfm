
<!---Call function multiply using cfinvoke with multiply(1,2,3,4) --->
<cfinvoke component="components.multiply" method="multiply" returnVariable="res">
    <cfinvokeargument name="arg1" value="1"> 
    <cfinvokeargument name="arg2" value="2">
    <cfinvokeargument name="arg3" value="3">
    <cfinvokeargument name="arg4" value="4">
</cfinvoke>
<!---Call function multiply using cfobject with multiply(1,2,3,4) --->
<cfobject  name="mulObj" type="component" component="components.multiply">
<cfset mul_obj=mulObj.multiply(1,2,3,4)>

<!---Call function multiply using cfcreateobject with multiply(1,2,3,4) --->
<cfset mObj=createObject("component","components.multiply")>
<cfset mul_value=mObj.multiply(1,2,3,4)>
<cfoutput>
    <h3>Using cfinvoke with multiply(1,2,3,4)  => #res#</h3>
    <h3>Using cfobject with multiply(1,2,3,4) => #mul_obj#</h3>
    <h3>Using CreateObject function with multiply(1,2,3,4) =>#mul_value#</h3>
</cfoutput>

