<%-- 
    Document   : customer_home
    Created on : 7 May, 2020, 3:47:03 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
   <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nothing+You+Could+Do" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/ionicons.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/icomoon.css">
    <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery-3.5.0.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        <title>CLient Home</title>
         <style>
            #main-container{
                display:flex;
                flex-direction: row;/*
                background-color: gold;*/
                
            }
             #inner-container{
                display:flex;
                max-width: 1200px;
                flex-direction: column;/*
                background-color: gold;*/
                
            }
            #d1,#d2{
               display:inline-block;
               margin-left:0px;
               margin-right: 0px;
               flex:5;
/*                flex:4;
                background-color: blue;*/
            }
            #d22{
                min-width:300px;
                flex:2;
/*                background-color: brown;*/
            }
        </style>
 
    </head>
    <body onload="clientData(),getclientProfile()">
            <jsp:include page="ClientHomeHeader.jsp" />
 
   <div>
       <h1 style="color: white"> Welcome <%= session.getAttribute("emailid1") %>   </h1>
       
       </div>
       <br>
   <br>
   
<!--   <div id="main-container" >
  
<div id="inner-container">
 <div id="d1"></div>
 

 
  </div>
       <div id="inner-container">
  <div id="profile">snksjco</div>
   </div>
</div>-->

<!--<div id="main-container" >
  
<div id="inner-container">
 <div id="d1"></div>

 
  </div>
  <div id="profile">snksjco</div>
</div>-->
<div id="main-container" >
  
<div id="inner-container">
 <div id="d1"></div>

  </div>
             <div style="display:block;">
             
  <div id="d22"></div>
</div>   
         </div>
                         <jsp:include page="footer.jsp" />
                         <div id="viewoffersmodel"  class="modal fade" role="dialog" >
                        <div class="modal-dialog" >

                            <!-- Modal content-->
                            <div class="modal-content" style="background-color: black">
                                
                                <div class="modal-header">
                                    <h4 class="modal-title" style="size: 16" >Offers Made</h4>
                                    <button type="button" class="close" data-dismiss="modal" style="color: #FF0000;">&times;</button>
                                </div>
                                
                                <div class="modal-body">
                                   
                                     <div class="row" style="display:block;">
                <div class="d12" style="display:block;" id="d12">
                
                </div>
            </div>
                                  
                                </div>
                                
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                </div>
                                
                            </div>

                        </div>
                    </div>
    </body>
    <script>
           // Parse query string to see if page request is coming from OAuth 2.0 server.
    var params = {};
    var regex = /([^&=]+)=([^&]*)/g, m;
    while (m = regex.exec(location.href)) {
        params[decodeURIComponent(m[1])] = decodeURIComponent(m[2]);
    }
    if (Object.keys(params).length > 0) {
        localStorage.setItem('authInfo', JSON.stringify(params));
    }
    window.history.pushState({}, document.title, "/" + "profile.html");
    let info = JSON.parse(localStorage.getItem('authInfo'))
    console.log(info['access_token'])
    console.log(info['expires_in'])
    
    function gmailTokenRevoke() {
        fetch("https://oauth2.googleapis.com/revoke?token=" + info.access_token,
            {
                method: 'POST',
                headers: {
                    "Content-type": "application/x-www-form-urlencoded"
                }
            })
            .then((data) => {
                location.href = "http://lancehub.j.layershift.co.uk"
            })
    }
   
        </script>
        <script>
            
            
            var projectid="";
            let n=0;
            
            
      function goo()
        {
            var comment=document.getElementById("comment").value;
            //alert(comment+"  "+n);
            if(n==0){
                alert("please add review");
                
            }
            else{
                 var xhttp = new XMLHttpRequest();
                  
               // Callback method
               // This method is called when server gives answer
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        
                        var r=xhttp.responseText.trim();
//                    alert(r);
//                        alert("length="+r.length);
                        if(r.length<11)
                        {
                           goo1();
                           
                        }
                       else
                       {
//                           console.log(r);
//                         alert("result="+res);
                         
                         //  Remove ""
                         var mainobj = JSON.parse(r);
                         
//                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          var arr = mainobj["ans"];
                        
//                         console.log(arr);
                          singleobj=arr[0];
                          let previousrating=parseInt(singleobj["rating"]);
                          
//                         alert(previousrating);
              n= ((previousrating+parseFloat(n))/2).toString();
//                alert("n"+n);
//                     alert("n="+n);
//                alert("x="+x);
               goo1();
                         
                       }
              
                    }
                };
                
               xhttp.open("GET","./average_rating?rating="+n+"&comment="+comment+"&us1="+useremail,true);
                // Step 2
                    // true --> async request
                
                // Step 3
                xhttp.send();
        }
                
              
            
            
        }
           function goo1()
        {
            var comment=document.getElementById("comment").value;
            //alert(comment+"  "+n);
            if(n==0){
                alert("please add review");
                
            }
            else{
                 var xhttp = new XMLHttpRequest();
                  
               // Callback method
               // This method is called when server gives answer
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        
                        var r=xhttp.responseText.trim();
                        //alert(r);
                        
                        if(r=="success")
                        {
                           alert("review added");
                           window.location.href="ClientHome.jsp";
                        }
               
              
                    }
                };
                
               xhttp.open("GET","./Add_Review?rating="+n+"&comment="+comment+"&us="+useremail,true);
                // Step 2
                    // true --> async request
                
                // Step 3
                xhttp.send();
        }
                
              
            
            
        }
            
            function postJobs()
            {
            $('#postjobModal').modal('show');
            
            
        }
        function CreateProject()
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
                            alert(r);
                             if(r=="error")
                        {
                          alert("Unable to Create Project");
                          
                        }
                        else if(r=="success")
                        {
                             alert("Project Created Successfully");
                             
                             $('#myModal1').modal('hide');
                             window.location.href="ClientHome.jsp";
                        }
                    }
                    };
                    
                    xhr.open("POST", "./client_project_create", true);
                    
                    alert("Sending Request to Server");
                    
                    //console.log(formdata);
                    
                    // ALso send FORM-Data with AJAX REQUEST
                    xhr.send(formdata);
                    alert("Form Data Sent");
                }
                 }
                 
                   
        var tableheadflag="";
              var ans="";    
              var ans1="";   
        
              function clientData(){
          
//                      alert(pl);
                      var xhttp = new XMLHttpRequest();
                  
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                         // JSON as String 
                         var res = xhttp.responseText.trim();
//                         alert(res);
                        
                              var mainobj = JSON.parse(res);
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          arr = mainobj["ans"];
                         
                         console.log(arr);
                         
                         
                         var ans="";
                         
//                         
//                        
                        for(var i=0;i<arr.length;i++)
                         {
                             let plFlag=false;
//                            
                         
//                             var singleobj = arr[i];
//                             let programingLanguage=singleobj["projecttechnologies"];
////                            alert(programingLanguage);
//                            let token = programingLanguage.split(",");
//                            let token1 = pl.split(",");
                           
                             
                                        
                              
                                 
                     var singleobj=arr[i];
                     
                    // ans+="<div class=\"row\">";
                     ans+="<div style=\"display:inline-block;\"  class=\"col-sm-12 col-lg-6 col-md-12\">";
                     ans=ans+"<table class=\"table table-hover\">";
                     ans=ans+"<tr style=\"background-image:url('images/client-bg.jpg'); background-size:600px 300px;\">";
//                         ans = ans+"<td width=\"20%\"><img src=\""+ singleobj["photo"] +"\" width='110' height='100' /></td>";
                       
                        ans=ans+"<td width=\"50%\"><h2>"+singleobj["projectname"]+"</h2> <br> <h5>"+singleobj["emailid"]+"</h5> <br> <h5>"+singleobj["projecttechnologies"]+"</h5> <br> <h5>"+singleobj["timeframe"]+"</h5></td>";
                         ans+="<td width=\"40%\"> <h4>Description</h4><h5>"+singleobj["discreption"]+"</h5></td>";
                        //  ans = ans+"<td>"+"<img src=\""+ singleobj["photo_cover"] +"\" width='100' height='100' />"+"</td>";
                        //   ans = ans+"<td>"+"<img src=\""+ singleobj["photo_profile"] +"\" width='100' height='100' />"+"</td>";
                          ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"View Offers\" class=\"btn-outline-primary2\" onclick=\"viewoffer("+singleobj["projectid"]+")\"/>"+"</td>";
//                                     ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"Rating\" class=\"btn-outline-primary2\" onclick=\"rating('"+singleobj["emailid"]+"')\"/>"+"</td>";
//        
                ans=ans+"</tr>";
                        ans=ans+"</table>";

                     ans+="</div>";
                
                    
                             
                             document.getElementById("d1").innerHTML=ans;


//********************
                         
                               ans = ans +"</table>";
                               
                            }
                         
//                          alert("Jobs recieved Successfully");
                         document.getElementById("d1").innerHTML = ans;
                         
                     
            }
        };
                // Step 2
                 xhttp.open("GET", "./client_view_jobs", true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }
            
             function rating(pid1)
            {
                
//                alert(pid);
                
                useremail=pid1;
                $('#myModal14').modal('show');
            }
            
               function fill(obj)
        {
//            alert("fill"+obj);
            var img = obj.src;
            var id = obj.id;
            var val = parseInt(id.substring(id.indexOf("_") + 1));
            var i;
            if (n === 0)
            {
                i = 1;
            } else
            {
                i = n + 1;
            }
            for (; i <= 5; i++)
            {
                if (i <= val)
                {
                    document.getElementById("rating_" + i).src = "rating/filled_star.png";

                } else
                {
                    document.getElementById("rating_" + i).src = "rating/empty_star.png";
                }
            }

        }
        function selected(obj)
        {
            var id = obj.id;
            var val = parseInt(id.substring(id.indexOf("_") + 1));
            n = val;
        }
        function unfill(obj)
        {
//            alert("unfill"+obj);
            var i;
            if (n === 0)
            {
                i = 1;
            } else
            {
                i = n + 1;
            }
            for (; i <= 5; i++)
            {
                document.getElementById("rating_" + i).src = "rating/empty_star.png";
            }
        }
            
            function viewoffer(pid)
            {
//                alert(pid);
                 projectid=pid;
               
                var xhttp = new XMLHttpRequest();
          
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
////                        document.getElementById("d1").innerHTML= xhttp.responseText.trim();
//                        var r = xhttp.responseText.trim();
//                        alert(r);
//                        if(r=="success")
//                        {
////                         document.getElementById("d1").innerHTML="Login Successfull";
////                          window.location.href="customer_home.jsp";
//                           
//                           alert("Offer sent to Project Owner");
//                           $('#searchJobsByUsernameModal').modal('hide'); 
//                        }
//                        else if(r=="error")
//                        {
//                            
//                        alert("offer Invalid")  
//                        }
                          var res=xhttp.responseText.trim();
                       
                         console.log(res);
                         
                         
                         //  Remove ""
                         var mainobj = JSON.parse(res);
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          var arr = mainobj["ans"];
                        
                         console.log(arr);
                        
                         
                         var ans="";
                         
                          $('#viewoffersmodel').modal('show');
                          
                          if(arr.length===0)
                          {
                              document.getElementById("d12").innerHTML = "<b style=\"font-size:24px; color:white; text-align:center;\">No Offers yet</b>";
                          }
                          else
                          {
                        for (var i = 0; i < arr.length; i++)
                        {
                            
                            ans = ans + "<table class=\"table table-bordered\" style=\"color: white\">";
                            ans = ans + "<tr> ";


                            
                            ans = ans + "<td>" + "Freelancer Name" + "</td>";
                            ans = ans + "<td>" + "Price" + "</td>";
                            
                             
                            ans = ans + "</tr>";
                            
                            for (var i = 0; i < arr.length; i++)
                            {
                                var singleobj = arr[i];
                                  ans = ans + "<tr>";
                                   ans = ans + "<td>"+ singleobj["freelancername"] +"</td>";
                                ans = ans + "<td>"+ singleobj["price"] +"</td>";
                                
                               
                                
                                
                                ans = ans + "</tr>";
                            }

                            ans = ans + "</table>";
                        }
                         
                        document.getElementById("d12").innerHTML = ans;
                        
            }
                    }
                };
                
                 
                xhttp.open("GET", "./view_offer_servlet?pr1="+projectid, true);    
                
               
                xhttp.send();
                
            }
            
            function getclientProfile()
           {
               
             var xhttp = new XMLHttpRequest();


                xhttp.onreadystatechange = function ()
                {
                    if (this.readyState == 4 && this.status == 200)
                    {
                       
                       var res=xhttp.responseText.trim();
                       
                         console.log(res);
//                         alert("result="+res);
                         
                         //  Remove ""
                         var mainobj = JSON.parse(res);
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          var arr = mainobj["ans"];
                        
                         console.log(arr);
                        
                         
                         var ans="";
                         
                         
                        for (var i = 0; i < arr.length; i++)
                        {
                            
//                            ans = ans + "<table  class=\"table table-bordered\" style=\"color: white\">";
//                            ans = ans + "<tr> ";
//
//
//                            ans = ans + "<td>" + "Email ID" + "</td>";
//                            ans = ans + "<td>" + "Full Name" + "</td>";
//                            ans = ans + "<td>" + "Address" + "</td>";
//                            
//                            ans = ans + "<td>" + "Mobile" + "</td>";
//                            ans = ans + "<td>" + "Block" + "</td>";
//                             
//                            ans = ans + "</tr>";
                            
                            
                              var singleobj=arr[i];
//                              alert(singleobj["emailid"]);
//                              if(singleobj["emailid"].match("asf@gmail.com")){
//                                  document.getElementById("profilephoto").innerHTML="<centre><img src=\"images/profile1_1.jpg\" width='100' height='100' /></centre>";
//                              }
                     
                    // ans+="<div class=\"row\">";
                    
                     ans+="<div style=\"display:block;\"  class=\"col-sm-12 col-lg-6 col-md-12\">";
//                     ans=ans+"<table style=\"display:block;\" class=\"table table-hover\">";

//        ans = ans+"<td>"+"<img src=\""+ src +"\" width='100' height='100' />"+"</td>";
        ans = ans + "<table class=\"table\" style=\"color: white\">";
        ans = ans + "<tr style=\" display:flex; flex-direction:column;\"> ";
                ans = ans + "<td style=\"display:block;\">"+ "Email: "+singleobj["emailid"] +"</td>";
                ans = ans + "<td style=\"display:block;\">"+ "Full Name "+singleobj["fullname"] +"</td>";      
                ans = ans + "<td style=\"display:block;\">"+ "Mobile: "+singleobj["mobile"] +"</td>";
                ans = ans + "<td style=\"display:block;\">"+ "Address: "+singleobj["address"] +"</td>"; 
//                ans = ans + "<td style=\"display:block;\">"+ "Backend: "+singleobj["backend"] +"</td>"; 
//                ans = ans + "<td style=\"display:block;\">"+ "Experience: "+singleobj["experience"] +"</td>"; 
//                ans = ans + "<td style=\"display:block;\">"+ "Certifications: "+singleobj["certification"] +"</td>"; 
//                //  ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"Offer\" class=\"btn-outline-primary2\" onclick=\"viewoffer("+singleobj["projectid"]+")\"/>"+"</td>";
        ans=ans+"</tr>";
        ans=ans+"</table>";

                     ans+="</div>";
                
                    
                             
                             document.getElementById("d22").innerHTML=ans;


//********************
                         
                               ans = ans +"</table>";
                               
                            }
                         

                         document.getElementById("d22").innerHTML = ans;
                    }
                };

                // Step 2
                xhttp.open("GET", "./view_client_profile", true);    // true --> async request

                // Step 3
                xhttp.send();
            }  
            </script>
            
                   <div class="modal" id="myModal14" >
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header " style="background: yellowgreen;" >
                            <h4 class="modal-title" style="color: white; justify-content:left;"> Add Review</h4>
                            <button type="button" style="justify-content:right;" class="close" data-dismiss="modal">&times;</button>
<!--                            <h4 class="modal-title" style="color: white; justify-content:left;"> Add Review</h4>-->
                        </div>
                        <div class="modal-body " >
                            <div>



                                <div id="all">

                                    <form action="" method="post" id="form14">
                                        <table>
                                            <tr> <label class="form-group"> Give Ratings..</label>
                                            <td>
                                                <img id="rating_1" src="rating/empty_star.png" onmouseover="fill(this);" onmouseout="unfill(this);" onclick="selected(this);" width="50px;" height="50px;">
                                            </td>
                                            <td>
                                                <img id="rating_2" src="rating/empty_star.png" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)" width="50px;" height="50px;">
                                            </td>
                                            <td>
                                                <img id="rating_3" src="rating/empty_star.png" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)" width="50px;" height="50px;">
                                            </td>
                                            <td>
                                                <img id="rating_4" src="rating/empty_star.png" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)" width="50px;" height="50px;">
                                            </td>
                                            <td>
                                                <img  id="rating_5" src="rating/empty_star.png" onmouseover="fill(this)" onmouseout="unfill(this)" onclick="selected(this)" width="50px;" height="50px;">
                                            </td>
                                            </tr>
                                        </table>
                                        <br>
                                        <label> Write Comment : </label> <input style="border-radius: 20px;" type="text" id="comment"  class="form-group"/>
                                        <input type="button" value="Submit" class="btn btn-primary" style="border-radius: 10px;" onclick="goo()"/>
                                        <label style="display: none;color: tomato;" id="label1">Please Select Any Rating</label>

                                    </form>
                                </div>
                             
                            </div>   
                        </div>
                            <!--</div>-->
                            <div class="modal-footer " style="background: yellowgreen;" >
                                <button type="button" class="btn btn-default" style="border-radius: 10px; background-color: white;" data-dismiss="modal" style="" >Close</button>
                            </div>
                        

                    </div>
                </div>
            </div>
            
        <div id="postjobModal"  class="modal fade" role="dialog" >
                        <div class="modal-dialog" >

                            <!-- Modal content-->
                            <div class="modal-content" style="background-color: black">
                                
                                <div class="modal-header">
                                    <h4 class="modal-title" style="size: 16" >Post Jobs</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>
                                
                                <div class="modal-body">
                                   
                                     <div class="row">
                <div class="col-sm-12">
                
                    
<!--                    <form id="form11" method="post" enctype="multipart/form-data">
                        
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
                        
                       <input type="hidden" name="email1" id="email1" value=" class="form-control col-sm-9" readonly="enabled" style="visibility: hidden" />
                        </div>
                       
                    </form>-->
                   
                
                    <div class="form-group form-row">
                            <input type="button" style="align-items: center"value="Submit " class="btn-primary btn-lg col-sm-9 offset-3" onclick="CreateProject()" />
                        </div>
                
                </div>
            </div>
                                  
                                </div>
                                
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                </div>
                                
                            </div>

                        </div>
                    </div>
</html>
