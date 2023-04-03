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
  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
   <script src="searchJobs.js"></script>
   <script src="https://smtpjs.com/v3/smtp.js"></script>
<script> 
    function emailInvite(){
    
    $('#sendInviteByEmailModal').modal('show');
}

</script>
<script>
     function emailInvite1(){
//    let emailForm=document.querySelector(#emailForm);

let inviteName=document.getElementById("inviteName");
let inviteEmail=document.getElementById("inviteEmail");

    Email.send({
    Host : "smtp.elasticemail.com",
    Username : "lancehubb1@gmail.com",
    Password : "F6D833FE5852FE4F00F64F015CC16AC95D61",
    To : "gurlalaulakh246@gmail.com",
    From : "softwareproject2023@gmail.com",
    Subject : "Invite to Join Lance Hubb",
    Body : "Hi There"
}).then(
  message => alert(message)
);
   
}
// Body : "Hi There,\n\
//            "+inviteName.value+"has send an invite join the Lance Hubb Community and find the best suited freelance work for you.prototype\n\
//              Click on http://lancehubb.j.layershift.co.uk/ to join now.
    </script>
        <title>Customer Home</title>
        <style>
            #main-container{
                display:flex;
                flex-direction: row;/*
                background-color: gold;*/
                
            }
            #d1{
               display:inline-block;
               margin-left:0px;
               margin-right: 0px;
               flex:5;
/*                flex:4;
                background-color: blue;*/
            }
            #profile{
                
                flex:2;
                background-color: brown;
            }
        </style>
    </head>
    <body onload="viewProjects()">
            <jsp:include page="FreelacerHomeHeader.jsp" />
   <br>
   <br>
   <div id="main-container" >
  <div id="d1"></div>
  <div id="profile">snksjco</div>
</div>
<!--   <div>
       <h1 style="color: white"> Welcome to Freelancer Home Page  </h1>
       
       </div>
       <br>
   <br>
    <div id="d1">
                      
                        </div>
   -->
   
  
   
                         <jsp:include page="footer.jsp" />
                         
                         <div id="searchJobsByUsernameModal"  class="modal fade" role="dialog" >
                        <div class="modal-dialog" >

                            <!-- Modal content-->
                            <div class="modal-content" style="background-color: black">
                                
                                <div class="modal-header">
                                    <h4 class="modal-title" style="size: 16" >Search Jobs</h4>
                                    <button type="button" class="close" data-dismiss="modal" style="color: #FF0000;">&times;</button>
                                </div>
                                
                                <div class="modal-body">
                                   
                                     <div class="row">
                <div class="col-sm-12">
                
                    
                    <form id="userSearchForm" method="post" enctype="multipart/form-data">
                        
                        <div class="form-group form-row">
                            <label for="userSearch" class="col-sm-3">Enter Username</label>
                            <input type="text"  name="userSearch"  id="userSearch" class="form-control col-sm-9" />
                        </div>
                       
                       
                       
                    </form>
                   
                
                    <div class="form-group form-row">
                            <input type="button" style="align-items: center"value="Submit " class="btn-primary btn-lg col-sm-9 offset-3" onclick="searchJobsByUsername1()" />
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
                         <div id="searchJobsByProgrammingLanguageModal"  class="modal fade" role="dialog" >
                        <div class="modal-dialog" >

                            <!-- Modal content-->
                            <div class="modal-content" style="background-color: black">
                                
                                <div class="modal-header">
                                    <h4 class="modal-title" style="size: 16" >Search Jobs</h4>
                                    <button type="button" class="close" data-dismiss="modal" style="color: #FF0000;">&times;</button>
                                </div>
                                
                                <div class="modal-body">
                                   
                                     <div class="row">
                <div class="col-sm-12">
                
                    
                    <form id="form11" method="post" enctype="multipart/form-data">
                        
                        <div class="form-group form-row">
                            <label for="plSearch" class="col-sm-3">Enter Programming Language</label>
                            <input type="text"  name="plSearch"  id="plSearch" class="form-control col-sm-9" />
                        </div>
                       
                       
                       
                    </form>
                   
                
                    <div class="form-group form-row">
                            <input type="button" style="align-items: center"value="Submit " class="btn-primary btn-lg col-sm-9 offset-3" onclick="searchJobsByProgrammingLanguage1()" />
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
                         <div id="searchJobsByFrontEndModal"  class="modal fade" role="dialog" >
                        <div class="modal-dialog" >

                            <!-- Modal content-->
                            <div class="modal-content" style="background-color: black">
                                
                                <div class="modal-header">
                                    <h4 class="modal-title" style="size: 16" >Search Jobs</h4>
                                    <button type="button" class="close" data-dismiss="modal" style="color: #FF0000;">&times;</button>
                                </div>
                                
                                <div class="modal-body">
                                   
                                     <div class="row">
                <div class="col-sm-12">
                
                    
                    <form id="form11" method="post" enctype="multipart/form-data">
                        
                        <div class="form-group form-row">
                            <label for="frameworkSearch" class="col-sm-3">Enter Framework</label>
                            <input type="text"  name="frameworkSearch"  id="frameworkSearch" class="form-control col-sm-9" />
                        </div>
                       
                       
                       
                    </form>
                   
                
                    <div class="form-group form-row">
                            <input type="button" style="align-items: center"value="Submit " class="btn-primary btn-lg col-sm-9 offset-3" onclick="searchJobsByFramework1()" />
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
                         <div id="sendInviteByEmailModal"  class="modal fade" role="dialog" >
                        <div class="modal-dialog" >

                            <!-- Modal content-->
                            <div class="modal-content" style="background-color: black">
                                
                                <div class="modal-header">
                                    <h4 class="modal-title" style="size: 16" >Send Invite</h4>
                                    <button type="button" class="close" data-dismiss="modal" style="color: #FF0000;">&times;</button>
                                </div>
                                
                                <div class="modal-body">
                                   
                                     <div class="row">
                <div class="col-sm-12">
                
                    
                    <form id="emailForm" method="post" enctype="multipart/form-data">
                        
                        <div class="form-group form-row">
                            <label for="inviteName" class="col-sm-3">Name</label>
                            <input type="text"  name="inviteName" placeholder="Your Name"  id="inviteName" class="form-control col-sm-9" />
                        </div>
                        <div class="form-group form-row">
                            <label for="inviteEmail" class="col-sm-3">Email</label>
                            <input type="text"  name="inviteEmail"  id="inviteEmail" class="form-control col-sm-9" />
                        </div>
<!--                        <div class="form-group form-row">
                            <label for="inviteMessage" class="col-sm-3">Email</label>
                            <input type="text"  name="inviteEmail"  id="inviteEmail" class="form-control col-sm-9" />
                        </div>-->
                       
                       
                       
                    </form>
                   
                
                    <div class="form-group form-row">
                            <input type="button" style="align-items: center"value="Send " class="btn-primary btn-lg col-sm-9 offset-3" onclick="emailInvite1()" />
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
                         
    </body>
    <script>
//        var params = {};
//    var regex = /([^&=]+)=([^&]*)/g, m;
//    while (m = regex.exec(location.href)) {
//        params[decodeURIComponent(m[1])] = decodeURIComponent(m[2]);
//    }
//    if (Object.keys(params).length > 0) {
//        localStorage.setItem('authInfo', JSON.stringify(params));
//    }
//    window.history.pushState({}, document.title, "/" + "profile.html");
//    let info = JSON.parse(localStorage.getItem('authInfo'))
//    console.log(info['access_token'])
//    console.log(info['expires_in'])
//    
//    function gmailTokenRevoke1() {
//        fetch("https://oauth2.googleapis.com/revoke?token=" + info.access_token,
//            {
//                method: 'POST',
//                headers: {
//                    "Content-type": "application/x-www-form-urlencoded"
//                }
//            })
//            .then((data) => {
//                location.href = "http://lancehubb.j.layershift.co.uk"
//            })
//    }
    </script>
    <script>
        function viewProjects()
            {
                var xhttp = new XMLHttpRequest();
               
               
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                         // JSON as String 
                         var res = xhttp.responseText.trim();
                         
                         console.log(res);
                         
                         //  Remove ""
                         var mainobj = JSON.parse(res);
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          arr = mainobj["ans"];
                         
                         console.log(arr);
                         
                         
                         var ans="";
                         
                        for(var i=0;i<arr.length;i++)
                         {
//                             ans=ans+"<table style=\"color:white\" class=\"table table-bordered\">";
//                             ans = ans + "<tr>";
//                             ans = ans + "<td>"+ "Project Owner" +"</td>";
//                             ans = ans + "<td>"+ "Project Name"+"</td>";
//                             ans = ans + "<td>"+ "description" +"</td>";
//                            
//                              ans = ans + "<td>"+ "Programming Languages" +"</td>";
//                               ans = ans + "<td>"+ "Frameworks" +"</td>";
//                              ans = ans + "<td>"+ "Time Frame" +"</td>";
//                               ans = ans + "<td>"+ "Make an Offer" +"</td>";
//                              ans = ans + "</tr>";
                         
//                         for(var i=0;i<arr.length;i++)
//                         {
//                             var singleobj = arr[i];
//                             
//                             ans = ans + "<tr>";
//                                ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
//                                ans = ans + "<td>"+ singleobj["projectname"] +"</td>";
//                                ans = ans + "<td>"+ singleobj["discreption"] +"</td>";
//                                ans = ans + "<td>"+ singleobj["planguages"] +"</td>";
//                                  ans = ans + "<td>"+ singleobj["frameworks"] +"</td>";
//                               ans = ans + "<td>"+ singleobj["timeframe"] +"</td>";
//                                ans = ans + "<td>"+"<input type=\"button\" value=\"Select\" onclick=\"Delete("+singleobj["emailid"]+")\"/>"+"</td>";
//                          
//                               ans = ans + "</tr>";
//                               }

//**********************

//    ans+="<div class=\"container\">";
          
                 for(var i=0;i<arr.length;i++)
                 {   
                     var singleobj=arr[i];
                     
                    // ans+="<div class=\"row\">";
                     ans+="<div style=\"display:inline-block;\"  class=\"col-sm-12 col-lg-6 col-md-12\">";
                     ans=ans+"<table class=\"table table-hover\">";
                     ans=ans+"<tr style=\"background-image:url('images/38121.jpg'); background-size:600px 300px;\">";
//                         ans = ans+"<td width=\"20%\"><img src=\""+ singleobj["photo"] +"\" width='110' height='100' /></td>";
                       
                        ans=ans+"<td width=\"50%\"><h2>"+singleobj["projectname"]+"</h2> <br> <h5>"+singleobj["emailid"]+"</h5> <br> <h5>"+singleobj["planguages"]+"</h5> <br> <h5>"+singleobj["timeframe"]+"</h5></td>";
                         ans+="<td width=\"40%\"> <h4>Description</h4><h5>"+singleobj["discreption"]+"</h5></td>";
                        //  ans = ans+"<td>"+"<img src=\""+ singleobj["photo_cover"] +"\" width='100' height='100' />"+"</td>";
                        //   ans = ans+"<td>"+"<img src=\""+ singleobj["photo_profile"] +"\" width='100' height='100' />"+"</td>";
                          ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"Offer\" class=\"btn-outline-primary2\" onclick=\"updateCart("+singleobj["food_item_id"]+")\"/>"+"</td>";
                        ans=ans+"</tr>";
                        ans=ans+"</table>";

                     ans+="</div>";
                
                  }  
//                  ans+="</div>";
                  document.getElementById("d1").innerHTML=ans;


//********************
                         
                               ans = ans +"</table>";
                            }
                         
                         document.getElementById("d1").innerHTML = ans;
                         
                    }
                };
                
                // Step 2
                xhttp.open("GET", "./freelancer_view_jobs", true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }
        </script>
       
</html>