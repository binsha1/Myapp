
<!---Call function multiply using cfinvoke with multiply(1,2,3,4) --->
<h3>Using cfinvoke with multiply(1,2,3,4)</h3>
<cfinvoke component="components.multiply" method="multiply" returnvariable="res">


<cfinvokeargument name="arg1" value="1"> 
<cfinvokeargument name="arg2" value="2">
<cfinvokeargument name="arg3" value="3">
<cfinvokeargument name="arg4" value="4">


</cfinvoke>

<!---Call function multiply using cfobject with multiply(1,2,3,4) --->

<h3>Using cfobject with multiply(1,2,3,4)</h3>
<cfobject  name="mulObj" type="component" component="components.multiply">
<cfoutput>


#mulObj.multiply(1,2,3,4)#

</cfoutput>
<!---Call function multiply using cfcreateobject with multiply(1,2,3,4) --->

<h3>Using CreateObject function with multiply(1,2,3,4)</h3>

<cfscript>
mObj=CreateObject("component","components.multiply");
mObj.multiply(1,2,3,4);
</cfscript>


