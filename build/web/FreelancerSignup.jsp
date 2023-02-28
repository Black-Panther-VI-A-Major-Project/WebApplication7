<%-- 
    Document   : customer_signup
    Created on : 6 May, 2020, 3:30:57 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <script src="js/jquery-3.5.0.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Freelancer Signup</title>
        <script>
            
            function check()
            {
                var emptyflag=false;
                var emailflag=false;
                
                var mobflag=false;
               
               // var city =document.getElementById("city").value;
                var email=document.getElementById("email").value;
                var fullname =document.getElementById("name").value;
            //    var remail=document.getElementById("remail").value;
                var pass=document.getElementById("pass1").value;
               // var pass1=document.getElementById("pass1").value;
                var addr=document.getElementById("address").value;
                var mob=document.getElementById("mob").value;
              //  var rcover=document.getElementById("rcover").src;
              //  var rprofile=document.getElementById("rprofile").src;
             //   var question=document.getElementById("question").value;
              //  var answer=document.getElementById("answer").value;
               
               
                
                if(fullname=="" || email=="" ||  pass=="" || addr=="" || mob=="")
            {
                 document.getElementById("error").style.color="red";
                document.getElementById("l1").innerHTML="All Field are necessary!!!";     
            }
            else
            {
                emptyflag=true;
            }
             var flag=0;
            var len=mob.length;
            if(len!=10)
            {
               document.getElementById("error").style.color="red";
               document.getElementById("l1").innerHTML="Mobile No. must be 10 Digits!!!";  
            }
           
            else
            {
                for(i=0;i<10;i++)
                {
                    var m=mob.charAt(i);
                    if(m<'0' && m>'9')
                    {
                       flag=1;
                       break;
                        document.getElementById("error").style.color="red";
                        document.getElementById("l1").innerHTML="Mobile No. must be all Digits!!!";
                    }
                   
                }
                if(flag==0)
                {
                    mobflag=true;
                }
            }
 
            
           
            var flagspecial=false;
            var flagdot=false;
            var a=0;
            var b=0;
            for(var i=0;i<email.length;i++)
            {
                if(email.charAt(i)=='@')
                {
                     flagspecial=true;
                     a=i;
                     
                }
               if(email.charAt(i)=='.')
               {
                    flagdot=true;
                   b=i;
               }
              
            }
             if(flagspecial==true &&  flagdot==true && a<b)
                   emailflag=true;
               else
               {
                document.getElementById("error").style.color="red";
                document.getElementById("l1").innerHTML="Please Enter Valid Email Id!!!";
               }
            if(emailflag==true && emptyflag==true && mobflag==true)
                add();
         
            }
            
             function add()
             {
                    var ans = "";
                var formdata = new FormData();
                
                var controls = document.getElementById("form1").elements;
                var flag = 0;
                
                for (var i = 0; i < controls.length; i++)
                {
                    if (controls[i].name == "" || controls[i].name == null)
                    {
                        flag = 1;
                    }
                    if (controls[i].type == "file")
                    {
                        if (controls[i].files.length > 0)
                        {
                            formdata.append(controls[i].name, controls[i].files[0]);
                        } 
                        else
                        {
                            flag = 2;
                        }
                    } 
                    else    // if not file, text control
                    {
                        formdata.append(controls[i].name, controls[i].value);
                    }
                }
                
                if (flag === 1)
                {
                    alert("CHECK: --> Give name attribute to all controls in form");
                } 
                else if (flag === 2)
                {
                    alert("CHECK: --> Select Files for file controls");
                } 
                else
                {
                    // Send AJAX Request to send FORMDATA (text + files) to Server
                    var xhr = new XMLHttpRequest;
                    
                    xhr.onreadystatechange = function ()
                    {
                        if (xhr.readyState === 4 && xhr.status == 200)
                        {
                            //get response from server
                            var r = xhr.responseText.trim();
                            alert("result=" +r);
                             if(r=="error")
                        {
                          alert("Freelancer alredy exists");
                          
                        }
                        else if(r=="success")
                        {
                             alert("Signup Successfull");
                              document.getElementById("error").style.color="green";
                        document.getElementById("l1").innerHTML="Signup Succesful";
                         
                             
                        }
                    }
                    };
                    
                    xhr.open("POST", "./freelancer_signup_servlet", true);
                    
                    alert("Sending Request to Server");
                    
                    //console.log(formdata);
                    
                    // ALso send FORM-Data with AJAX REQUEST
                    xhr.send(formdata);
                }
                 }
 
             
            </script>
    </head>
    <body>
       <div class="container" >
         <jsp:include page="FreelancerSignupHeader.jsp" />
        <br>
        <br>  
            <div class="row">
                <div class="col-sm-12">
                    
                        <center> <h1 class="h1"> Freelancer Signup</h1></center>
                   
                </div>
            </div>
         
            <div class="row">
                <div class="col-sm-12">
                
                    
              <form id="form1" method="post" enctype="multipart/form-data" >
                       
                      
                        
                        <div class="form-group form-row" >
                            <label for="email" class="col-sm-3">Email Id</label>
                            <input type="text" name="email"  id="email" class="form-control col-sm-9" /> 
                        </div>
                        
                        <div class="form-group form-row">
                            <label for="pass" class="col-sm-3">Password </label>
                            <input type="password" name="pass1" id="pass1" class="form-control col-sm-9" /> 
                        </div>
                        
                        <div class="form-group form-row" >
                            <label for="name" class="col-sm-3">Full Name</label>
                           <input type="text" name="name"  id="name" class="form-control col-sm-9" />
                        </div>
                        <div class="form-group form-row" >
                            <label for="mobile" class="col-sm-3">Mobile Number</label>
                            <input type="text" name="mob"  id="mob" class="form-control col-sm-9" /> 
                        </div>
                         
                        
                        <div class="form-group form-row" >
                            <label for="Address" class="col-sm-3">Address</label>
                            <textarea  name="address"  id="address" class="form-control col-sm-9" /> </textarea>
                        </div>
                        
                        
                        
                   
                        
                        <div class="form-group">
                         <div  id="d11" class="row"  >
                          
                    </div>
                        </div>
                    </form>
                    
                    <div class="form-group form-row">
                            <input type="button" value="Sign up" class="btn-primary btn-lg col-sm-3 offset-3" onclick="check()" />
                        </div>
                  
                    
                    
                
                </div>
            </div>
            <div id="error" style="color:red"><label id="l1" class="offset-3"></label></div>
            <div id="error1" style="color:red"><label id="l2" class="offset-3"></label></div>
        </div>
        
        
                         <br>
   <br>
                 <jsp:include page="footer.jsp" />     
    </body>
</html>
