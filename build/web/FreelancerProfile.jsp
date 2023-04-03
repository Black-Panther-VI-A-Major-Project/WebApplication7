<%-- 
    Document   : HomePage
    Created on : 03-Mar-2023, 1:32:44 pm
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body onload="abc()">
      
        
    </body>
</html>

<script>
    
    function abc(){
       var url=document.URL;
        
      url=url.toString();
      url=url.substring(63);

//      alert(url)
      var xhttp = new XMLHttpRequest();
               
               
           
           
               
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                     //   document.getElementById("d1").innerHTML= xhttp.responseText.trim();
                        var r = xhttp.responseText.trim();
//                        alert(r);
                        if(r=="success")
                        {
//                         alert("Sucess");
                       window.location.href="FreelancerHome.jsp";
                            
                        }
                        else if(r=="error")
                        {
                          alert("Please Signup First");  
                             window.location.href="FreelancerSignup.jsp";
                      //   document.getElementById("d1").innerHTML="Invalid Username or Password";   
                        }
                        
//                        else if(r=="pending")
//                        {
//                         document.getElementById("d1").innerHTML="Verification Pending";  
//                         $('#myModal1').modal('show');
//                        }
                    }
                };
                
//            alert(url);
                xhttp.open("GET", "./freelancer_gmail_servlet?u1="+url, true);    
                
              
                xhttp.send();
             
            
    }
   

</script>
       