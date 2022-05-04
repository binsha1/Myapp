function validateInput()
{
    var v=document.getElementById('num').value;
    if(isNaN(v)==true)
    {
        alert('Non numeric value entered');
    }

}

function validateFields()
{
    var select=document.getElementById('position').value;
    var relocate=document.getElementById('relocate').checked;
    var fname=document.getElementById('fname').value;
    var lname=document.getElementById('lname').value;
    var email=document.getElementById('email').value;
    var p1=document.getElementById('phone').value;
    var date=document.getElementById('cdate').value;
    var ph_length=p1.length;  
    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/ ;    
    if(select=="")
    {        
        alert("Select atleast one valid option !!");
        event.preventDefault();
        return false;
    }
    else if(relocate==false)
    {
        alert("Select yes or no !!");
        event.preventDefault();
        return false;
    }
    else if (date =="")
    {
       alert("Date should not be empty");
        event.preventDefault();
        return false;
    }
    else if(relocate==false)
    {
        alert("Select yes or no !!");
        event.preventDefault();
        return false;
    }
    else if((fname=="") && (lname==""))
    {
         alert("First Name and Last Name should not be empty");
         event.preventDefault();
        return false;
    }
    else if((fname=="") && (lname!=""))
    {
        alert("First Name should not be empty");
         event.preventDefault();
        return false;
    }
    else if((fname!="") && (lname==""))
    {
        alert("Last Name should not be empty");
         event.preventDefault();
        return false;
    }
    else if((email==" "))
    {
        alert("Email should not be empty");
         event.preventDefault();
        return false;
    }
  
    else if(!(email.match(mailformat)))
    {
        alert("Email is not in correct format");
         event.preventDefault();
        return false;
    }
    else if (p1 =="")
    {
       alert("Phone Number should not be empty");
         event.preventDefault();
        return false;
    }
    else if(isNaN(p1) ==true)
    {
        alert("Phone should not be in string format");
         event.preventDefault();
        return false;
        
    }
    else if(ph_length!=10)
    {
        alert("Phone length should be equal to 10");
         event.preventDefault();
        return false;
    }     
}
$(document).ready(function(){
$("body").on('change', '#email_sub', function() {
    var email=$(this).val();
    
    $.ajax({   
            url: "../components/dbData.cfc",
            type: 'get',
            dataType:"json",
            data:{
              method:"getEmailData",
              u_email:email
              
            },
            success:function(data)
            {
              alert('fdg');
              if(data==0)
              {
                $('#submit_sub').prop('disabled', false);
              }
              else{
                alert('Email Already Exists');
              }
            }         
            
       });
   });
});