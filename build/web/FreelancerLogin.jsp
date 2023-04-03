<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Freelancer Login</title>
        
    </head>
    <script src="script1.js"></script>
    <script>
    var username,password;
           
            
    function check()
            {
            username=document.getElementById("user").value;
            password=document.getElementById("pass").value;
           
           if(username==""||password=="")
           {
               document.getElementById("d1").innerHTML="Username or password is empty";
             
           }
           else
           {
               
               var xhttp = new XMLHttpRequest();
               
               
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        document.getElementById("d1").innerHTML= xhttp.responseText.trim();
                        var r = xhttp.responseText.trim();
//                        alert(r);
                        if(r=="block")
                        {
                         document.getElementById("d1").innerHTML="User ID Blocked";
                         alert("You have been blocked. Please contact Admin for more info");
                            
                        }
                        else if(r=="success")
                        {
                         document.getElementById("d1").innerHTML="Login Successfull";
                          window.location.href="FreelancerHome.jsp";
                            
                        }
                        else if(r=="error")
                        {
                            
                         document.getElementById("d1").innerHTML="Invalid Username or Password";   
                        }
                        
//                        else if(r=="pending")
//                        {
//                         document.getElementById("d1").innerHTML="Verification Pending";  
//                         $('#myModal1').modal('show');
//                        }
                    }
                };
                
            
                xhttp.open("GET", "./freelancer_login_servlet?u="+username+"&p="+password, true);    
                
              
                xhttp.send();
             
           }
                
    }    
    </script>
    <body>
             <jsp:include page="FreelancerSignupHeader.jsp" />
   <br>
   <br>
 
        <div class="container">
            
            <div class="row">
                <div class="col-sm-12">
                     
                        <h1 class="h1"> Freelancer Login </h1>
                  
                </div>
            </div> 
            <div class="row">
                <div class="col-sm-12">
      
                    <form style="color: white">
                        
                        <div class="form-group">
                            <label for="user">Email</label>
                            <input type="text" name="user" id="user" class="form-control" />
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="pass">Password </label>
                            <input type="password" name="pass" id="pass" class="form-control" /> 
                        </div>
                        <br>
                        
                          
                        
                        
                        <div class="form-group">
                            <input type="button" value="Login" onclick="check()" />
                        </div>
                        
                        <div class="login-with-google-btn">
                            <input type="button" value="Login with Gmail" onclick="signIn()" />
                        </div>
                        
<!--                        <button type="button" class="login-with-google-btn" >
  Sign in with Google
</button>-->
                        
                       <div  class="form-group">
                          
<!--                            <a href="forgot_pass_customer.jsp" title="Forgot Password"  > 
                       Forget Password
                        </a>-->
                        </div>
                    </form>
                
                    <div id="d1">
                        </div>
                
                </div>
            </div>
            
           
          
        </div>
   
 
                        <br>
   <br>
        <jsp:include page="footer.jsp" />                   
   
    </body>
<!--     <script src="css/styling/GoogleButton.css"></script>-->
</html>
