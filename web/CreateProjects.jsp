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
        <title>Create Tickets</title>
        <script>
    
    function CreateProject()
        
    {
        let datecheck=document.getElementById("timeframe").value;
        
        let token = datecheck.split("-");
        
        if(token[0]>2025||token[0]<2023)
        {
          alert("Incorrect Date Format");  
        }
       else
        {
         var ans = "";
                var formdata = new FormData();
                
                var controls = document.getElementById("form11").elements;
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
                
                if (flag == 1)
                {
                    alert("CHECK: --> Give name attribute to all controls in form");
                } 
                else if (flag == 2)
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
//                            alert(r);
                             if(r=="error")
                        {
                          alert("Unable to Create Project");
                          
                        }
                        else if(r=="success")
                        {
                             alert("Project Created Successfully");
                             
//                             $('#myModal1').modal('hide');
                             window.location.href="ClientHome.jsp"; 
                        }
                    }
                    };
                    
                    xhr.open("POST", "./client_project_create", true);
                    
//                    alert("Sending Request to Server");
                    
                    //console.log(formdata);
                    
                    // ALso send FORM-Data with AJAX REQUEST
                    xhr.send(formdata);
//                    alert("Form Data Sent");
                }
            }
                 }
            </script>
    </head>
    <body>
       <div class="container" >
         <jsp:include page="ClientHomeHeader.jsp" />
        <br>
        <br>  
            <div class="row">
                <div class="col-sm-12">
                    
                        <center> <h1 class="h1"> Create Tickets</h1></center>
                   
                </div>
            </div>
         
            <div class="row">
                <div class="col-sm-12">
                
                    
                <form id="form11" method="post" enctype="multipart/form-data">
                        
                        <div class="form-group form-row">
                            <label for="otp" class="col-sm-3">Name of Project</label>
                            <input type="text"  name="projectname"  id="projectname" class="form-control col-sm-9" />
                        </div>
                        <div class="form-group form-row">
                            <label for="otp" class="col-sm-3">Discreption of Project</label>
                            <input type="text"  name="projectdesc" id="projectdesc" class="form-control col-sm-9" />
                        </div>
                        <div class="form-group form-row">
                            <label for="otp" class="col-sm-3">Programming Languages</label>
                            <input type="text"  name="planguages" id="planguages" class="form-control col-sm-9" />
                        </div>
                        <div class="form-group form-row">
                            <label for="otp" class="col-sm-3">Framework Required</label>
                            <input type="text"  name="frameworks" id="frameworks" class="form-control col-sm-9" />
                        </div>
                        <div class="form-group form-row">
                            <label for="otp" class="col-sm-3">Time   Frame</label>
                            <input type="date"  name="timeframe" id="timeframe" class="form-control col-sm-9" />
                        </div>
                        
                       <input type="hidden" name="email1" id="email1" value="<%= session.getAttribute("emailid1") %>" class="form-control col-sm-9" readonly="enabled" style="visibility: hidden" />
                        <!--</div>-->
                       
                    </form>
                    
                    <div class="form-group form-row">
                            <input type="button" value="Create Ticket" class="btn-primary btn-lg col-sm-3 offset-3" onclick="CreateProject()" />
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
