<cfcomponent accessors="TRUE">
    <cffunction  name="numStatus" access="remote">
        <cfargument  name="Number">
        <cfset status="">
        <cfif Number EQ 1>
            <cfset status="OK">
        <cfelseif Number EQ 2>
            <cfset status="OK">
        <cfelseif Number EQ 3>
            <cfset status="Fair">
        <cfelseif Number EQ 4>
            <cfset status="Good">
        <cfelseif Number EQ 5>
            <cfset status="Very Good">
        <cfelse>
            <cfset status="Error">
        </cfif>
        <cflocation url="../cf_task1.cfm?status=#status#">
    </cffunction>

    <cffunction  name="numStatus2" access="remote">
        <cfargument name="Number">
        <cfset status="">
        <cfswitch expression="#formNum#"> 
            <cfcase value=1><cfset status="OK"></cfcase>
            <cfcase value=2><cfset status="OK"></cfcase> 
            <cfcase value=3><cfset status="Fair"></cfcase>
            <cfcase value=4><cfset status="Good"></cfcase>
            <cfcase value=5><cfset status="Very Good"></cfcase>
            <cfdefaultcase><cfset status="Error"></cfdefaultcase> 
        </cfswitch>        
        <cflocation url="../cf_task2.cfm?status=#status#">
    </cffunction>

    <cffunction  name="divide" access="remote" returntype="array">
            <cfargument name="Number">
            <cfset numArray=arrayNew(1)>
            <cfloop list="#Number#" index="i" >
                <cfif i mod 3>            
                        <cfcontinue>
                <cfelse>
                    <cfset arrayAppend(numArray, i)>
                </cfif>            
            </cfloop> 
        <cfreturn numArray>           
    </cffunction>

    <cffunction name="dateFunc" access="remote" returnType="array">
        <cfargument  name="user_dob">
        <cfargument  name="mom_dob">
        <cfset current_year=DateFormat(Now(),"yyyy")>
        <cfset user_year=DateFormat(user_dob,"yyyy")>
        <cfset user_month=DateFormat(user_dob,"mm")>
        <cfset user_day=DateFormat(user_dob,"dd")>
        <cfset mom_year=DateFormat(mom_dob,"yyyy")>
        <cfset mom_month=DateFormat(mom_dob,"mm")>
        <cfset mom_day=DateFormat(mom_dob,"dd")>

        <cfset user_age=dateDiff("d", user_year, current_year)>
        <cfset deliver_age=dateDiff("d", mom_year, user_year)>
        <cfset arrayN=arrayNew(1)>
        
        <cfset user_bdy=CreateDate(current_year,user_month,user_day)>
        <cfset mom_bdy=CreateDate(current_year,mom_month,mom_day)>
        <cfset user_count=dateDiff("d",  now(), user_bdy)>
        <cfset mom_count=dateDiff("d",  now(), mom_bdy)>
        <cfset arrayAppend(arrayN,user_age)>
        <cfset arrayAppend(arrayN,deliver_age)>
        <cfset arrayAppend(arrayN,user_count)>
        <cfset arrayAppend(arrayN,mom_count)>
        <cfreturn arrayN>
    </cffunction>

    <cffunction  name="structFunc" access="remote">
        <cfargument  name="key">
        <cfargument  name="value">
        <cfset struct_name=structNew()>
        <cfset struct_name.Key=key>
        <cfset struct_name.Value=value>
        <cfreturn struct_name>
    </cffunction>

    <cffunction  name="structFunc2" access="remote">
        <cfargument  name="key_name">
        <cfargument  name="value_name">       
        <cfset struct_name=structNew()>
        <cfset s = StructInsert(struct_name, "#key_name#", "#value_name#",1)>     
        <cfapplication name="structures" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)# sessionManagement = "Yes">    
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")>        
            <cfif IsDefined("key_name") AND  IsDefined("value_name") >           
                <cfif NOT StructKeyExists(Session.mystruct,"#key_name#")>
                    <cfset Session.mystruct["#key_name#"] = #value_name#> 
                </cfif>
            </cfif>
        </cfif>
        <cfreturn #session.mystruct#>
    </cffunction>

    <cffunction  name="structFunc3" access="remote">
        <cfargument  name="key_name">
        <cfargument  name="value_name">       
        <cfset struct_name=structNew()>
        <cfset s = StructInsert(struct_name, "#key_name#", "#value_name#",1)>     
        <cfapplication name="structures" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)# sessionManagement = "Yes">    
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")>        
            <cfif IsDefined("key_name") AND  IsDefined("value_name") >       
                
                    <cfset Session.mystruct["#key_name#"] = #value_name#> 
                
            </cfif>
        </cfif>
        <cfreturn #session.mystruct#>
    </cffunction>

    <cffunction  name="structFunc4" access="remote">
        <cfargument  name="key_name">
        <cfargument  name="value_name">       
        <cfset struct_name=structNew()>
        <cfset s = StructInsert(struct_name, "#key_name#", "#value_name#",1)>     
        <cfapplication name="structures" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)# sessionManagement = "Yes">    
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfset yes_no= StructKeyExists(Session.mystruct,"#key_name#")>    
        <cfif StructKeyExists(Session, "mystruct")>        
            <cfif IsDefined("key_name") AND  IsDefined("value_name") >           
                <cfif NOT StructKeyExists(Session.mystruct,"#key_name#")>
                    <cfset Session.mystruct["#key_name#"] = #value_name#> 
                </cfif>
            </cfif>
        </cfif>
        <cfdump var="#session.mystruct#">
        <cfreturn yes_no>
    </cffunction>

    <cffunction  name="structFunc5" access="remote">
        <cfargument  name="key_name">
        <cfargument  name="value_name">       
        <cfset struct_name=structNew()>
        <cfset s = StructInsert(struct_name, "#key_name#", "#value_name#",1)>     
        <cfapplication name="structures" sessionTimeout = #CreateTimeSpan(0, 0, 0, 60)# sessionManagement = "Yes">    
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")>        
            <cfif IsDefined("key_name") AND  IsDefined("value_name") >     
                <cfset Session.mystruct["#key_name#"] = #value_name#> 
            </cfif>
        </cfif>
        <cfset structArray = structKeyArray(Session.mystruct)>
        <cfset sortedKeys = structArray.sort("text","asc")>     
	    <cfdump var="#session.mystruct#">
        <cfreturn #sortedKeys#>   
    </cffunction>

    <cffunction  name="queryFunc">
        <cfquery name="user_data" datasource="user_inf">
                SELECT * FROM user_data
        </cfquery>
        <cfreturn #user_data#>
    </cffunction>

    <cffunction  name="textFunc">
        <cfargument  name="textString">
        <cfset sent="the quick brown fox jumps over the lazy dog">        
        <cfset count_var=ListValueCount(sent,textString," ")>
        <cfreturn count_var>
    </cffunction>

    <cffunction  name="loopFunc">
        <cfset l =3>
        <cfloop from="1" to="3" index="i">        
            <cfloop from="1" to="3" index="j" >
                <cfoutput>#i# &nbsp;</cfoutput>
                <cfset  i= (i + l)>
            </cfloop>                   
            <cfoutput> <br></cfoutput>    
        </cfloop>
    </cffunction>

    <cffunction  name="evenOdd" access="remote">
        <cfargument  name="num_value">        
        <cfset numArray=arrayNew(1)>
        <cfset session.nArray=numArray>
        <cfif isNumeric(num_value)>
            <cfloop from ="1" to =#num_value# index="i">
                <cfset arrayAppend(session.nArray, i)>
            </cfloop>
        </cfif>      
        <cflocation  url="../cf_task17.cfm">
    </cffunction>
    
    <cffunction  name="cookieFunc" access="remote">
        <cfif IsDefined("cookie.VisitsCounter") eq "NO">
            <cfcookie name="VisitsCounter" value="0">
        </cfif>

        <cfif IsDefined("cookie.VisitsCounter") eq "YES">
            <cfset c_value=cookie.VisitsCounter>
            <cfset c_count=c_value+1>
            <cfcookie name="VisitsCounter" value="#c_count#">
        </cfif>
        <cfset session.c_name=cookie.VisitsCounter>
        <cflocation  url="../cf_task19.cfm">        
    </cffunction>

    <cffunction name="capString" returnType="string" output="false">
        <cfset var chars = "23456789ABCDEFGHJKMNPQRS*@/abcdefghijklmnopqrst()">
        <cfset var length = randRange(4,7)>
        <cfset var result = "">
        <cfset var i = "">
        <cfset var char = "">
        
        <cfscript>
        for(i=1; i <= length; i++) {
            char = mid(chars, randRange(1, len(chars)),1);
            result&=char;
        }
        </cfscript>		
        <cfreturn result>
    </cffunction>

    <cffunction name="capFunc" access="remote">
        <cfargument  name="captchaText">
        <cfargument  name="cHash">
        <cfargument  name="mail_add">
        <cfif hash(captchaText) neq cHash>
            <cfset session.cap="false">
        <cfelse>
            <cfset session.cap="true">
        </cfif>
        <cflocation  url="../cf_task20.cfm?mail_add=#mail_add#">
    </cffunction>

    <cffunction name="birthWishes" access="remote">
    <cfset thisDir = expandPath("../uploads")>
    <cfif len(trim(form.img_file)) >
            <cffile action="upload" fileField="form.img_file"  destination="#thisDir#" result="fileUpload"
            nameconflict="overwrite">
            <cfset file_name=#fileupload.serverfile# >         
            <cfset fileLoc=fileupload.serverDirectory & '\' & fileupload.serverfile >
            <cfmail to="#form.baby_mail#" from="binshasr3@gmail.com" subject="Happy Birthday" > 
            <cfmailparam file="#fileLoc#" disposition="inline"  contentID="image1">
                    <img src="cid:image1">Happy Birthday  #form.baby_name# !
            </cfmail>
            <cfset session.birthday="true">            
              <cfelse>
                <cfset fileLoc="">                
                <cfset session.birthday="false">            
    </cfif>    
    <cflocation  url="../cf_task21.cfm">
    </cffunction>
    
    <cffunction name="jsonFunc" access="public">
        <cfset jData = [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
        <cfset tData = serializeJSON(jData)> 
        <cfset dData = deserializeJSON(tData)>
        <cfreturn dData> 
    </cffunction>

    <cffunction  name="wordFunc" access="remote" output="false">
            <cfargument  name="description">
            <cfset wordData=createObject("component", "tagCloud")>
            <cfset structData=wordData.init(#arguments.description#)>
            <cfset skeys=structKeyList(structData)>
            <cftry>
                <cfloop list="#skeys#" index="i"> 
                    <cfquery name="word" datasource="word_data">
                        INSERT INTO word_data.word_count(word_name) VALUES(<cfqueryparam value="#i#" cfsqltype="CF_SQL_VARCHAR"> )
                    </cfquery>
                </cfloop>
            <cfcatch type="database">
            </cfcatch>
            </cftry>
            <cflocation url="../count.cfm?desc='#arguments.description#">
    </cffunction>

    <cffunction  name="loginFunc" access="remote">
            <cfargument  name="user_name">
            <cfargument  name="pwd">
            <cfset authenticate_user=createObject("component","authenticateUser")>
            <cfset errorMessage=authenticate_user.validateUser(user_name,pwd)>
            <cfif arrayIsEmpty(errorMessage)>
                    <cfset userLogin=authenticate_user.doLogin(user_name,pwd)>
                    <cfif userLogin EQ true>                        
                        <cflocation url="../welcome.cfm">
                    <cfelse>
                        <cflocation  url="../cf_task27.cfm?invalid=true">>
                    </cfif>
            </cfif>        
    </cffunction>

    <cffunction name="loginFunc2" access="remote" >
            <cfargument  name="user_name">
            <cfargument  name="pwd">
            <cfset userRoles=createObject("component","loginRoles")>
            <cfset isLogin=userRoles.doLogin(user_name,pwd)> 
            <cfoutput>#isLogin#
            </cfoutput>
            <cfif isLogin EQ true>
                <cfif isUserInRole('admin') OR isUserInRole('editor')>
                    <cflocation url="../page_list.cfm">
                <cfelse>
                    <cflocation url="../page_menu.cfm">
                </cfif>
            <cfelse>
                <cflocation  url="../cf_task28?invalid=true"> 
            </cfif>          
    </cffunction>

    <cffunction  name="updatePage" access="remote">
        <cfargument  name="pagename">
        <cfargument  name="pagedesc">
        <cfargument  name="id">
        <cfquery  name="update_data" datasource="cms_data">
             UPDATE cms_data.page SET pagename=<cfqueryparam value="#arguments.pagename#" cfsqltype="CF_SQL_VARCHAR"> , pagedesc=<cfqueryparam value="#arguments.pagedesc#" cfsqltype="CF_SQL_VARCHAR"> WHERE pageid=<cfqueryparam value="#arguments.id#" cfsqltype="CF_SQL_INTEGER"> 
        </cfquery>        
        <cflocation url="../page_list.cfm?update=1">
    </cffunction>

    <cffunction name="wordCount" access="remote" output="false">

    </cffunction>
        <!---
    <cffunction  name="subFunc" access="public">
            <cfargument  name="first_name">
            <cfargument  name="email_id">
            <cfquery name="validate_email" datasource="validate_email"  >
            INSERT INTO validate_email.validate_data(first_name,email_id) VALUES(<cfqueryparam  value="#arguments.first_name#" cfsqltype="CF_SQL_VARCHAR">,
            <cfqueryparam  value="#arguments.email_id#" cfsqltype="CF_SQL_VARCHAR">)
            </cfquery>
        
    </cffunction>--->
 <!---
    <cffunction  name="empFunc" access="remote">
       <cfset thisDir = expandPath("../uploads")>
       
         <cfargument  name="position" required="true" type="string"><cfoutput>sdg
       </cfoutput>
       <cfargument  name="relocate">
        <cfargument  name="dollar">
        <cfargument  name="cents">
        <cfargument  name="doc_file">
        <cfargument  name="cdate">
        <cfargument  name="p_url">
        <cfargument  name="f_name">
        <cfargument  name="l_name">
        <cfargument  name="email">
        <cfargument  name="phone">
        <cfset salary=#arguments.dollar# & '.' & #arguments.cents#>
        <cfif len(trim(#arguments.doc_file#))>
                <cffile action="upload" fileField="form.doc_file"  destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
                <cfset file_name=fileupload.serverfile >
        <cfelse>
                <cfset file_name="" >
        </cfif>
                
       
    </cffunction>--->


</cfcomponent>