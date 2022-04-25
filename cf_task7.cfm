<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <title>Cf Structure</title>
    </head>
    <body>
        
                <div class = "cf_class">
                                 
               <cfform name="sform" action="">
                      
                                          
                        <label>Key Text </label>
                            <input type="text" name="key_name" 
                            required placeholder="Key Text">
                       
                      <br><br>
                      
                                         
                        <label> Value Text</label>
                    <input type="text" name="value_name"  required placeholder="Value Text" >
                       
                    <br><br>
                
                        
                            <input type="submit"  name="submit" 
                            value="Submit"/>
                        
                    </cfform>
                </div>
        
    </body>
</html>

 <cfif structKeyExists(form,'Submit')>
<cfset struct_name = StructNew()> 
<cfset s = StructInsert(struct_name, "#form.key_name#", "#form.value_name#",1)>  

<cfset myArray = arrayNew(1)>
  <cfset arrayAppend(myArray, struct_name)>
  
  <cfset key=form.key_name>
  <cfset value=form.value_name>
 <cfapplication name="structures" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)#
                        sessionManagement = "Yes">    
<cfif NOT StructKeyExists(Session, "mystruct")>
    <cflock timeout=20 scope="Session" type="Exclusive">
      <cfset Session.mystruct = structNew()>
    </cflock>
</cfif>

<cfif StructKeyExists(Session, "mystruct")>
  <cfif IsDefined("key") AND  IsDefined("value") >
    <cfif NOT StructKeyExists(Session.mystruct,"#key#")>
      <cfset Session.mystruct["#key#"] = #value#> 
    </cfif>
  </cfif>
</cfif>

<cfdump var="#Session.mystruct#">	
</cfif>