<cfscript>

function multiply() { 
var arg_count = ArrayLen(Arguments); 
var mul =1; 
var i = 0; 
for( i = 1 ; i LTE arg_count; i = i + 1 ) 
{ 
mul = mul* Arguments[i]; 
} 
return mul; 
}
</cfscript>
<cfset res=multiply(1, 2,3,4)>

<cfdump var="#res#" >






