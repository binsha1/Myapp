<cfset i =1>
  <cfset  a=3>
  <cfset l =3>
  <cfloop from="1" to="3" index="i">              
                <cfset r =#i#>
                      <cfloop from="1" to="3" index="j">
                                    <cfoutput>#r# &nbsp;</cfoutput>
                                  <cfset  r= (#r# + #l# )>
                      </cfloop>                   
                      <cfoutput> <br></cfoutput>
     
  </cfloop>