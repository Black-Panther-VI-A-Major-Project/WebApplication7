<%-- 
    Document   : admin_login
    Created on : 25 Apr, 2020, 3:10:30 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
      <script>
            var username,password;
            
            function check1()
            {
            username=document.getElementById("user").value;
            password=document.getElementById("pass").value;
            
           if(username==""||password=="")
           {
               document.getElementById("d1").innerHTML="Username or password is empty";
             
           }
           else if(username=="admin"||password=="123")
           {
               document.getElementById("d1").innerHTML="Login Successfull";  
               window.location.href="AdminHome.jsp";
            }
            else
            {
               document.getElementById("d1").innerHTML="Incorrect username or password"; 
                
            }
        }
      </script>
    </head>
    <body>
      
        <br>
        <br>
        <div class="container">
            
            <div class="row">
                <div class="col-sm-12">
                     
                        <h1 class="h1" align="center"> Admin Login </h1>
                   <br>
                   <br>
                   <br>
                   <br>
                   <br>
                </div>
            </div> 
            <div class="row">
                <div class="col-sm-12">
      
                    <form style="color: white">
                        
                        <div class="form-group">
                            <label for="user">Username</label>
                            <input type="text" name="user" id="user" class="form-control" />
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="pass">Password </label>
                            <input type="password" name="pass" id="pass" class="form-control" /> 
                        </div>
                        <br>
                        <div class="form-group">
                            <input type="button" value="Login" onclick="check1()" />
                        </div>
                        
                         
                        <div id="d1">
                            </div>
                    </form>
                
                    
                
                </div>
            </div>
            
           
          
        </div>
         <br>
   <br>
                         <jsp:include page="footer.jsp" />
    </body>
</html>

