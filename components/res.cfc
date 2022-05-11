<cfcomponent accessors="TRUE">
    <cffunction  name="numStatus" access="remote" output="false">
        <cfargument  name="Number" type="integer">
        <cfset local.status="">
        <cfif #arguments.Number# EQ 1>
            <cfset local.status="OK">
        <cfelseif #arguments.Number# EQ 2>
            <cfset local.status="OK">
        <cfelseif #arguments.Number# EQ 3>
            <cfset local.status="Fair">
        <cfelseif #arguments.Number# EQ 4>
            <cfset local.status="Good">
        <cfelseif #arguments.Number# EQ 5>
            <cfset local.status="Very Good">
        <cfelse>
            <cfset local.status="Error">
        </cfif>
        <cflocation url="../cf_task1.cfm?status=#local.status#">
    </cffunction>

    <cffunction  name="numStatus2" access="remote" output="false">
        <cfargument name="Number" type="integer">
        <cfset local.status="">
        <cfswitch expression="#arguments.Number#"> 
            <cfcase value=1><cfset local.status="OK"></cfcase>
            <cfcase value=2><cfset local.status="OK"></cfcase> 
            <cfcase value=3><cfset local.status="Fair"></cfcase>
            <cfcase value=4><cfset local.status="Good"></cfcase>
            <cfcase value=5><cfset local.status="Very Good"></cfcase>
            <cfdefaultcase><cfset local.status="Error"></cfdefaultcase> 
        </cfswitch>        
        <cflocation url="../cf_task2.cfm?status=#local.status#">
    </cffunction>

    <cffunction  name="divide" access="remote" returntype="array" output="true">
            <cfargument name="Number" type="string">
            <cfset local.numArray=arrayNew(1)>
            <cfloop list="#arguments.Number#" index="i" >
                <cfif i mod 3>            
                        <cfcontinue>
                <cfelse>
                    <cfset arrayAppend(numArray, i)>
                </cfif>            
            </cfloop> 
        <cfreturn local.numArray>           
    </cffunction>

    <cffunction name="dateFunc" access="public" returnType="array" output="true">
        <cfargument  name="user_dob" type="date">
        <cfargument  name="mom_dob" type="date">
        <cfset local.current_year=DateFormat(Now(),"yyyy")>
        <cfset local.user_year=DateFormat(user_dob,"yyyy")>
        <cfset local.user_month=DateFormat(user_dob,"mm")>
        <cfset local.user_day=DateFormat(user_dob,"dd")>
        <cfset local.mom_year=DateFormat(mom_dob,"yyyy")>
        <cfset local.mom_month=DateFormat(mom_dob,"mm")>
        <cfset local.mom_day=DateFormat(mom_dob,"dd")>

        <cfset local.user_age=dateDiff("d", user_year, current_year)>
        <cfset local.deliver_age=dateDiff("d", mom_year, user_year)>
        <cfset local.arrayN=arrayNew(1)>
        
        <cfset local.user_bdy=CreateDate(current_year,user_month,user_day)>
        <cfset local.mom_bdy=CreateDate(current_year,mom_month,mom_day)>
        <cfset local.user_count=dateDiff("d",  now(), user_bdy)>
        <cfset local.mom_count=dateDiff("d",  now(), mom_bdy)>
        <cfset arrayAppend(arrayN,user_age)>
        <cfset arrayAppend(arrayN,deliver_age)>
        <cfset arrayAppend(arrayN,user_count)>
        <cfset arrayAppend(arrayN,mom_count)>
        <cfreturn local.arrayN>
    </cffunction>

    <cffunction  name="structFunc" access="public" output="true">
        <cfargument  name="key" type="string">
        <cfargument  name="value" type="string">
        <cfset local.struct_name=structNew()>
        <cfset local.struct_name.Key=key>
        <cfset local.struct_name.Value=value>
        <cfreturn local.struct_name>
    </cffunction>

    <cffunction  name="structFunc2" access="public" output="true">
        <cfargument  name="key_name" type="string">
        <cfargument  name="value_name" type="string">       
        <cfset local.struct_name=structNew()>
        <cfset local.s = StructInsert(struct_name, "#arguments.key_name#", "#arguments.value_name#",1)>  
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")>        
            <cfif IsDefined("key_name") AND  IsDefined("value_name") >           
                <cfif NOT StructKeyExists(Session.mystruct,"#arguments.key_name#")>
                    <cfset Session.mystruct["#key_name#"] = #arguments.value_name#> 
                </cfif>
            </cfif>
        </cfif>
        <cfreturn session.mystruct>
    </cffunction>

    <cffunction  name="structFunc3" access="public" output="true">
        <cfargument  name="key_name" type="string">
        <cfargument  name="value_name" type="string">       
        <cfset local.struct_name=structNew()>
        <cfset local.s = StructInsert(struct_name, "#arguments.key_name#", "#arguments.value_name#",1)>   
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
        <cfreturn session.mystruct>
    </cffunction>

    <cffunction  name="structFunc4" access="public" output="true">
        <cfargument  name="key_name" type="string">
        <cfargument  name="value_name" type="string">       
        <cfset local.struct_name=structNew()>
        <cfset local.s = StructInsert(struct_name, "#arguments.key_name#", "#arguments.value_name#",1)>     
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfset local.yes_no= StructKeyExists(Session.mystruct,"#key_name#")>    
        <cfif StructKeyExists(Session, "mystruct")>        
            <cfif IsDefined("key_name") AND  IsDefined("value_name") >           
                <cfif NOT StructKeyExists(Session.mystruct,"#arguments.key_name#")>
                    <cfset Session.mystruct["#key_name#"] = #arguments.value_name#> 
                </cfif>
            </cfif>
        </cfif>
        <cfdump var="#session.mystruct#">
        <cfreturn local.yes_no>
    </cffunction>

    <cffunction  name="structFunc5" access="public" output="true">
        <cfargument  name="key_name" type="string">
        <cfargument  name="value_name" type="string">       
        <cfset local.struct_name=structNew()>
        <cfset local.s = StructInsert(struct_name, "#arguments.key_name#", "#arguments.value_name#",1)>    
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
        <cfset local.structArray = structKeyArray(Session.mystruct)>
        <cfset local.sortedKeys = structArray.sort("text","asc")>     
	    <cfdump var="#session.mystruct#">
        <cfreturn local.sortedKeys>   
    </cffunction>

    <cffunction  name="queryFunc" access="public" output="true">
        <cfquery name="user_data" datasource="user_inf">
                SELECT * FROM user_data
        </cfquery>
        <cfreturn user_data>
    </cffunction>

    <cffunction  name="textFunc" access="public" output="true">
        <cfargument  name="textString" type="string">
        <cfset local.sent="the quick brown fox jumps over the lazy dog">        
        <cfset local.count_var=ListValueCount(sent,"#arguments.textString#"," ")>
        <cfreturn local.count_var>
    </cffunction>

    <cffunction  name="loopFunc" access="public" output="false">
        <cfset local.l =3>
        <cfloop from="1" to="3" index="i">        
            <cfloop from="1" to="3" index="j" >
                <cfoutput>#i# &nbsp;</cfoutput>
                <cfset  i= (i + l)>
            </cfloop>                   
            <cfoutput> <br></cfoutput>    
        </cfloop>
    </cffunction>

    <cffunction  name="evenOdd" access="remote" output="false">
        <cfargument  name="num_value" type="integer">        
        <cfset local.numArray=arrayNew(1)>
        <cfset session.nArray=numArray>
        <cfif isNumeric(num_value)>
            <cfloop from ="1" to =#num_value# index="i">
                <cfset arrayAppend(session.nArray, i)>
            </cfloop>
        </cfif>      
        <cflocation  url="../cf_task17.cfm">
    </cffunction>
    
    <cffunction  name="cookieFunc" access="remote" output="false">
        <cfif IsDefined("cookie.VisitsCounter") eq "NO">
            <cfcookie name="VisitsCounter" value="0">
        </cfif>
        <cfif IsDefined("cookie.VisitsCounter") eq "YES">
            <cfset local.c_value=cookie.VisitsCounter>
            <cfset local.c_count=c_value+1>
            <cfcookie name="VisitsCounter" value="#c_count#">
        </cfif>
        <cfset session.c_name=cookie.VisitsCounter>
        <cflocation  url="../cf_task19.cfm">        
    </cffunction>

    <cffunction name="capString" access="public" returnType="string" output="false" >
        <cfset local.chars = "23456789ABCDEFGHJKMNPQRS*@/abcdefghijklmnopqrst()">
        <cfset local.length = randRange(4,7)>
        <cfset local.result = "">
        <cfset local.i = "">
        <cfset local.char = "">
        
        <cfscript>
        for(i=1; i <= length; i++) {
            char = mid(chars, randRange(1, len(chars)),1);
            result&=char;
        }
        </cfscript>		
        <cfreturn local.result>
    </cffunction>

    <cffunction name="capFunc" access="remote" output="false">
        <cfargument  name="captchaText" type="string">
        <cfargument  name="cHash" type="string">
        <cfargument  name="mail_add" type="string">
        <cfif hash(captchaText) neq cHash>
            <cfset session.cap="false">
        <cfelse>
            <cfset session.cap="true">
        </cfif>
        <cflocation  url="../cf_task20.cfm?mail_add=#mail_add#">
    </cffunction>

    <cffunction name="birthWishes" access="remote" output="false">
        <cfargument  name="img_file" type="string">
        <cfset local.thisDir = expandPath("../uploads")>        
        <cfif len(trim(arguments.img_file)) >
                <cffile action="upload" fileField="form.img_file"  destination="#thisDir#" result="fileUpload"
                nameconflict="overwrite">
                <cfset local.file_name=#fileupload.serverfile# >         
                <cfset local.fileLoc=fileupload.serverDirectory & '\' & fileupload.serverfile >
                <cfmail to="#form.baby_mail#" from="binshasr3@gmail.com" subject="Happy Birthday" > 
                <cfmailparam file="#fileLoc#" disposition="inline"  contentID="image1">
                        <img src="cid:image1">Happy Birthday  #form.baby_name# !
                </cfmail>
                <cfset session.birthday="true">            
                <cfelse>
                    <cfset local.fileLoc="">                
                    <cfset session.birthday="false">            
        </cfif>    
        <cflocation  url="../cf_task21.cfm">
    </cffunction>
    
    <cffunction name="jsonFunc" access="public" output="true">
        <cfset local.jData = [{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]>
        <cfset local.tData = serializeJSON(jData)> 
        <cfset local.dData = deserializeJSON(tData)>
        <cfreturn local.dData> 
    </cffunction>

    <cffunction  name="wordFunc" access="remote" output="false">
            <cfargument  name="description" type="string">
            <cfset local.wordData=createObject("component", "tagCloud")>
            <cfset local.structData=wordData.init(#arguments.description#)>
            <cfset local.skeys=structKeyList(structData)>
            <cftry>
                <cfloop list="#skeys#" index="i"> 
                    <cfquery name="word" datasource="word_data">
                        INSERT INTO word_data.word_count(word_name) 
                        VALUES(<cfqueryparam value="#i#" cfsqltype="CF_SQL_VARCHAR"> )
                    </cfquery>
                </cfloop>
                <cfcatch type="database">
                </cfcatch>
            </cftry>
            <cflocation url="../count.cfm?desc='#arguments.description#">
    </cffunction>

    <cffunction name="wordFunc2" access="remote" output="false">
        <cfargument  name="doc_file" type="string">
        <cfset local.thisDir = expandPath("../uploads")>        
        <cfif len(trim(#arguments.doc_file#)) >
                <cffile action="upload" fileField="form.doc_file"  destination="#thisDir#" result="fileUpload"
                nameconflict="overwrite">
                <cfset local.file_name=#fileupload.serverfile# >            
                <cfset local.fileLoc=fileupload.serverDirectory & '\' & fileupload.serverfile >       
            
                <cffile action="read" file="#fileLoc#" variable="Contents">
                <cfset local.wordData=createObject("component", "tagCloud")>
                <cfset local.structData=wordData.init(Contents)>
                <cfset local.skeys=structKeyList(structData)>
                <cftry>
                <cfloop list="#skeys#" index="i">              
                    <cfquery name="word" datasource="read_data">
                        INSERT INTO read_data.read_count(word_name) 
                        VALUES(<cfqueryparam value="#i#" cfsqltype="CF_SQL_VARCHAR"> )
                    </cfquery>
                </cfloop>
                <cfcatch type="database">                
                </cfcatch>
                </cftry>              
                <cflocation url="../countf.cfm?desc='#Contents#">       
        </cfif>
    </cffunction>

    <cffunction  name="loginFunc" access="remote" output="false">
            <cfargument  name="user_name" type="string">
            <cfargument  name="pwd" type="string">
            <cfset local.authenticate_user=createObject("component","authenticateUser")>
            <cfset local.errorMessage=authenticate_user.validateUser(user_name,pwd)>
            <cfif arrayIsEmpty(errorMessage)>
                    <cfset local.userLogin=authenticate_user.doLogin(user_name,pwd)>
                    <cfif userLogin EQ true>                        
                        <cflocation url="../welcome.cfm">
                    <cfelse>
                        <cflocation  url="../cf_task27.cfm?invalid=true">>
                    </cfif>
            </cfif>        
    </cffunction>

    <cffunction name="loginFunc2" access="remote" output="false" >
            <cfargument  name="user_name" type="string">
            <cfargument  name="pwd" type="string">
            <cfset local.userRoles=createObject("component","loginRoles")>
            <cfset local.isLogin=userRoles.doLogin(user_name,pwd)>
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

    <cffunction  name="updatePage" access="remote" output="false">
        <cfargument  name="pagename" type="string">
        <cfargument  name="pagedesc" type="string">
        <cfargument  name="id" type="integer">
        <cfquery  name="update_data" datasource="cms_data">
                UPDATE cms_data.page 
                SET pagename=<cfqueryparam value="#arguments.pagename#" cfsqltype="CF_SQL_VARCHAR"> ,
                pagedesc=<cfqueryparam value="#arguments.pagedesc#" cfsqltype="CF_SQL_VARCHAR"> 
                WHERE pageid=<cfqueryparam value="#arguments.id#" cfsqltype="CF_SQL_INTEGER"> 
        </cfquery>        
        <cflocation url="../page_list.cfm?update=1">
    </cffunction>

    <cffunction  name="addPage" access="remote" output="false">
            <cfargument  name="page_name" type="string">
            <cfargument  name="description" type="string">
            <cfquery name="page_data" datasource="cms_data"> 
                    INSERT INTO cms_data.page(pagename,pagedesc) 
                    VALUES (<cfqueryparam value="#arguments.page_name#" cfsqltype="CF_SQL_VARCHAR">,
                    <cfqueryparam value="#arguments.description#" cfsqltype="CF_SQL_VARCHAR">) 
            </cfquery>
            <cflocation  url="../page_list.cfm?add=1">                       
    </cffunction>

    <cffunction  name="delPage" access="public" returnType="boolean" output="true">
                <cfargument  name="page_id" type="integer" >                
                <cfquery name="page_data" datasource="cms_data"> 
                        DELETE FROM cms_data.page 
                        WHERE pageid=<cfqueryparam value="#arguments.page_id#" cfsqltype="CF_SQL_INTEGER"> 
                </cfquery>                
                <cfset local.recordDelete=true>
                <cfreturn local.recordDelete>      
    </cffunction>

    <cffunction  name="upQuery" access="public" output="true" returntype="query">
            <cfargument  name="id" type="integer">
            <cfquery name="update_data" datasource="cms_data"> 
                  SELECT * FROM cms_data.page
                  WHERE pageid = <cfqueryparam value="#arguments.id#" cfsqltype="CF_SQL_INTEGER">
              </cfquery>
              <cfreturn update_data>
    </cffunction>   
        
    <cffunction  name="subFunc" access="remote" output="false">
            <cfargument  name="first_name" type="string">
            <cfargument  name="email_id" type="string">
            <cfquery name="validate_email" datasource="validate_email"  >
                INSERT INTO validate_email.validate_data(first_name,email_id) 
                VALUES(<cfqueryparam  value="#arguments.first_name#" cfsqltype="CF_SQL_VARCHAR">,
                <cfqueryparam  value="#arguments.email_id#" cfsqltype="CF_SQL_VARCHAR">)
            </cfquery>
            <cflocation  url="../cf_task24.cfm?save=1">        
    </cffunction>   

    <cffunction name="uploadImg" access="remote" output="false">        
        <cfargument  name="img_name" type="string">
        <cfargument  name="description" type="string">
        <cfset local.thisDir = expandPath("../uploads")>        
        <cfif structKeyExists(form,"img_file")>        
            <cffile action="upload" fileField="form.img_file"  destination="#thisDir#" result="fileUpload"
            nameconflict="overwrite">
            <cfquery name="img_data" datasource="img_data"> 
                INSERT INTO img_data.img_table(img_name,description,file_name)
                VALUES (<cfqueryparam value="#arguments.img_name#" cfsqltype="CF_SQL_VARCHAR">, <cfqueryparam value="#arguments.description#" cfsqltype="CF_SQL_VARCHAR">, "#fileupload.serverfile#") 
            </cfquery>
            <cfif fileUpload.fileWasSaved>
                    <cfset path=fileupload.serverdirectory & "\" & fileupload.serverfile>
                <cfif not IsImageFile(path)>
                    <cfset errors = "Invalid Image!<br />"> <!--- clean up ---> 
                    <cffile action="delete" file="#path#">
                <cfelseif fileupload.filesize gt 1000000>
                        <cfset session.fsize="gt">
                <cfelse>
                        <cfimage action="read" source="#path#" name="myImage">
                        <cfset ImageScaleToFit(myImage,20,20,"bilinear")>
                        <cfset newImageName =fileupload.serverdirectory & "\" & fileupload.serverFileName & "_thumbnail." &fileUpload.serverFileExt>
                        <cfimage source="#myImage#" action="write" destination="#newImageName#" overwrite="yes">
                        <cfset session.thumbail=newImageName>
                        <cfset session.directory=fileupload.serverdirectory>
                        <cflocation url="../upload_img.cfm?upload=1">                       
                </cfif>
            </cfif>
        </cfif>
    </cffunction>

    <cffunction  name="empFunc" access="remote" output="false">        
                <cfargument  name="position" type="string">                
                <cfargument  name="Relocate" type="string">
                <cfargument  name="dollar" type="string" required="no">
                <cfargument  name="cents" type="string" required="no">        
                <cfargument  name="cdate" type="date">
                <cfargument  name="p_url" type="string">
                <cfargument  name="f_name" type="string" >
                <cfargument  name="l_name" type="string">
                <cfargument  name="email" type="string">
                <cfargument  name="phone" type="string" >
                <cfargument  name="doc_file" type="string" >
                
                <cfset local.salary=#arguments.dollar# & '.' & #arguments.cents#>
                <cfset local.thisDir = expandPath("../uploads")>
                <cfif len(trim(#arguments.doc_file#)) >      
                <!---<cfset salary=#arguments.dollar# & '.' & #arguments.cents#>--->        
                        <cffile action="upload" fileField="form.doc_file"  destination="#thisDir#" result="fileUpload" nameconflict="overwrite">
                        <cfset local.file_name=fileupload.serverfile >
                <cfelse>
                        <cfset local.file_name="" >
                </cfif>       
                <cfquery name="subscribe" datasource="subscribe">
                        INSERT INTO subscribe.subscribe(position,relocate,cdate,website,resume,salary,first_name,last_name,email_id,phone)
                        VALUES (
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.position#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.Relocate#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.cdate#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.p_url#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#file_name#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#salary#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.f_name#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value="#arguments.l_name#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.email#">,
                        <cfqueryparam  CFSQLType="cf_sql_varchar" value ="#arguments.phone#">) 
                </cfquery>
                <cflocation  url="../cf_task23.cfm?Message=1">
    </cffunction>

    <cffunction name="queryRes" output="true" returntype="query">
            <cfquery name='page_data' datasource='cms_data'>
                SELECT * FROM cms_data.page
            </cfquery>
            <cfreturn page_data>
    </cffunction>
    <cffunction name="queryRes2" output="true" returntype="query">
            <cfargument  name="id" type="integer">
            <cfquery name='page_data' datasource='cms_data'>
                SELECT * FROM cms_data.page WHERE pageid="#arguments.id#" 
            </cfquery>
            <cfreturn page_data>
    </cffunction>  
    <cffunction name="queryRes3" output="true" returntype="query">            
            <cfquery name='page' datasource='word_data'>
                    SELECT * FROM word_data.word_count 
            </cfquery>
            <cfreturn page>
    </cffunction> 
    
    <cffunction name="queryRes4" output="true" returntype="query">            
            <cfquery name='page' datasource='read_data'>
                SELECT * FROM read_data.read_count 
            </cfquery>
            <cfreturn page>
    </cffunction>
    
    <cffunction name="queryRes5" output="true" returntype="query">            
            <cfquery name="img_data" datasource="img_data">
                SELECT * FROM img_table
            </cfquery>
            <cfreturn img_data>
    </cffunction>
</cfcomponent>