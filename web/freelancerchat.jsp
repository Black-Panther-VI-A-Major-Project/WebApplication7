<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
            #d1{
               display:inline-block;
               margin-left:35px;
               margin-right: 0px;
               flex:5;
               
               
               min-width:1095px;
               min-height:550px;
               border:solid white 1px;
               padding: 20px;
               background-image:url("images/chatbackground4.jpg");
               display: none;
               position:relative;
               top:0px;
               right:10px;
               left:395px;
               bottom:50px;
/*               background-size:600px 900px;*/
               
/*                flex:4;
                background-color: blue;*/
            }
            #d22{
                position: fixed;
                left:10px;
                width:400px;
                flex:2;
                 margin-left:0px;
               margin-right: 0px;
/*                background-color: brown;*/
            }
/*            .table-hover{
                color:grey;
            }*/
        </style>
<!--        <style>
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
                display:flex;
                flex-direction: column;
                flex:2;
                
            }
            #d22{
               display:flex block;
                flex-direction: column;
               
/*                flex:4;
                background-color: blue;*/
            }
        </style>-->
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
        <title>Customer Home</title>
        <style>
            #MessageText{
                width:1000px;
                height:50px;
                position:fixed;
                bottom:10px;
                right:100px;
                
            }
            #send-button{
               width:90px;
                height:50px;
                position:fixed;
                bottom:10px;
                right:10px; 
                background-color:grey
            }
            #left-messages{
                padding:3px;
          
/*                  position:absolute;*/
/*                float:right;*/
                right:5px;
                color: black;
/*                align-self:end;*/
                text-align: end;
/*                display:flex;*/
                
             
               
                width: 500px;
/*display:inline;*/
                background-color:#99FF99;
                margin-left: 500px;
                border-radius: 18px;
            }
            #right-messages{
/*                 display:flex;
                 flex-direction: row-reverse;*/
                 padding:3px;
                 color: black;
                text-align: left;
/*                  float:left;*/
                  width: 500px;
                background-color:#FFCCFF;
                  border-radius: 18px;
/*                  display:inline;*/
            }
            </style>
    </head>
    <body onload="getFreelancers()">
     <jsp:include page="FreelacerHomeHeader.jsp" />
      
<!--   <div>
-->        <div id="headeremail" style="color: white; display:none; position:fixed; top: 0px;"><%= session.getAttribute("freelancerEmail") %>   </div><!--
      
 

<!--   <div id="main-container" >
  <div id="d1"></div>
  <div id="profile">
      <div id="profilephoto"></div>
      <div id="d22">
          
      </div>
   
  </div>
</div>-->
          <div id="main-container" >
                        <div style="display:block;">
<!--             <div id="profilephoto"></div>-->
  <div id="d22"></div>
</div>   
  
<div id="inner-container">
    <div id="d1"></div>

 <div id="sendmessage">
<textarea id="MessageText" name="MessageText" rows="5" cols="10"></textarea>
<input id="send-button" type="button" value="send" onclick="sendMessage()">
 </div>
  </div>
              
   
         </div>
                    
                        
                         <div id="searchJobsByUsernameModal"  class="modal fade" role="dialog" >
                        <div class="modal-dialog" >

                            <!-- Modal content-->
                            <div class="modal-content" style="background-color: black">
                                
                                <div class="modal-header">
                                    <h4 class="modal-title" style="size: 16" >Make an Offer</h4>
                                    <button type="button" class="close" data-dismiss="modal" style="color: #FF0000;">&times;</button>
                                </div>
                                
                                <div class="modal-body">
                                   
                                     <div class="row">
                <div class="col-sm-12">
                
                    
                    <form id="userSearchForm" method="post" enctype="multipart/form-data">
                        
                        <div class="form-group form-row">
                            <label for="userSearch" class="col-sm-3">Enter Price</label>
                            <input type="text"  name="offerPrice"  id="offerPrice" class="form-control col-sm-9" />
                        </div>
                       
                       
                       
                    </form>
                   
                
                    <div class="form-group form-row">
                            <input type="button" style="align-items: center"value="Submit " class="btn-primary btn-lg col-sm-9 offset-3" onclick="saveoffer()" />
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
                        
<!--                         <div class="modal" id="myModal14" >
                <div class="modal-dialog">

                     Modal content
                    <div class="modal-content">
                        <div class="modal-header " style="background: yellowgreen;" >
                            <h4 class="modal-title" style="color: white; justify-content:left;"> Add Review</h4>
                            <button type="button" style="justify-content:right;" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title" style="color: white; justify-content:left;"> Add Review</h4>
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
                            </div>
                            <div class="modal-footer " style="background: yellowgreen;" >
                                <button type="button" class="btn btn-default" style="border-radius: 10px; background-color: white;" data-dismiss="modal" style="" >Close</button>
                            </div>
                        

                    </div>
                </div>
            </div>-->
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
//                location.href = "http://lancehub.j.layershift.co.uk"
//            })
//    }
    </script>
<!--  let guyEmail=<%= session.getAttribute("freelancerEmail") %>;-->
    <script>
          let n=0;
          let guyEmail=document.getElementById("headeremail").innerHTML.trim();
          let sendreciever="";
        let useremail="";
        let avgrating="";
        var tableheadflag="";
              var ans="";    
              var ans1="";   
              var projectid="";
              
          profilephoto=document.getElementById("profilephoto");
       
//        function Freelancerdata()
//        {
//            
//          {
//                var xhttp = new XMLHttpRequest();
//               
//               
//                xhttp.onreadystatechange = function() 
//                {
//                    if (this.readyState == 4 && this.status == 200) 
//                    {
//                         // JSON as String 
//                         var res = xhttp.responseText.trim();
//                         
//                         console.log(res);
//                         
//                         //  Remove ""
//                         var mainobj = JSON.parse(res);
//                         
//                         console.log(mainobj);
//                         
//                         // Extract ans[] from mainobj
//                          arr = mainobj["ans"];
//                         
//                         console.log(arr);
//                         
//                         
//                      
//                         
//                        for(var i=0;i<arr.length;i++)
//                         {
//                           
//                         
//                         for(var i=0;i<arr.length;i++)
//                         {
//                             var singleobj = arr[i];
//                             
//                            
//                                ans = ans +  singleobj["emailid"];
//                            
//                               }
//                               ans1=ans;
//                               
//                               
//                           
////                             loaddashboard(ans);
//alert(ans);
//                          
//                            }
//                         
////                         document.getElementById("d1").innerHTML = ans;
////                         
//                    }
//                };
//                
//                // Step 2
//                xhttp.open("GET", "./view_freelacer_jobs1", true);    // true --> async request
//                
//                // Step 3
//                xhttp.send();
//            }  
//            
//        }
function alertHello(){
    alert("helllo");
}

function reloadMsg(){
    setInterval(getMessages1,5000);
   
}

function sendMessage()
   
            {
                let msg=document.getElementById("MessageText").value;
       
               
               var xhttp = new XMLHttpRequest();
               
               
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        var res=xhttp.responseText.trim();
                         getMessages(sendreciever);
                         document.getElementById("MessageText").value="";
                         
                    }
                };
                
                
                xhttp.open("GET", "./send_message?msg="+msg+"&user="+sendreciever+"&user1="+guyEmail, true);    
//                send_message?msg="+msg+"&user="+sendreciever
              
                xhttp.send();
             
           
                
    }    

            
            
  function getFreelancers()
            {
                 var xhttp = new XMLHttpRequest();


                xhttp.onreadystatechange = function ()
                {
                    if (this.readyState == 4 && this.status == 200)
                    {
                       
                       var res=xhttp.responseText.trim();
                       
//                         console.log(res);
                         
                         
                         //  Remove ""
                         var mainobj = JSON.parse(res);
                         
//                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          var arr = mainobj["ans"];
                        
//                         console.log(arr);
                        
                         
                         var ans="";
                         
                         
                        for (var i = 0; i < arr.length; i++)
                        {
                            
                            ans = ans + "<table  class=\"table  table-bordered\" style=\"color: white\">";
                            ans = ans + "<tr> ";


//                            ans = ans + "<td>" + "Email ID" + "</td>";
//                            ans = ans + "<td>" + "Full Name" + "</td>";
//                            ans = ans + "<td>" + "Address" + "</td>";
//                            
//                            ans = ans + "<td>" + "Mobile" + "</td>";
//                            ans = ans + "<td>" + "Block" + "</td>";
//                             ans = ans + "<td>" + "Audit" + "</td>";
                            ans = ans + "</tr>";
                            
                            for (var i = 0; i < arr.length; i++)
                            {
                                var singleobj = arr[i];
                                  ans = ans + "<tr>";
//                                   ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
                               ans = ans + "<td onclick=\"getMessages('"+singleobj["emailid"]+"')\">"+singleobj["fullname"]+"</td>";

//    ans = ans + "<td onclick=\"getMessages('"+singleobj["fullname"]+"\"')>"+ singleobj["fullname"] +"</td>";
//                                ans = ans + "<td>"+ singleobj["address"] +"</td>";
//                                ans = ans + "<td>"+ singleobj["mobile"] +"</td>";
                             
                               
                                
//                               ans = ans + "<td>"+"<input type=\"button\" value=\"Block\" onclick=\"cancel('"+singleobj["emailid"]+"')\"/>"+"</td>";
//                                ans = ans + "<td>"+"<input type=\"button\" value=\"Audit\" onclick=\"auditUser('"+singleobj["emailid"]+"')\"/>"+"</td>";
//
//                            
                                ans = ans + "</tr>";
                            }

                            ans = ans + "</table>";
                        }
                         
                        document.getElementById("d22").innerHTML = ans;
                        
                   
                    }
                };

                // Step 2
                xhttp.open("GET", "./get_clients", true);    // true --> async request

                // Step 3
                xhttp.send();
            }
            
            function getMessages(sendMesssageName)
            {
              sendreciever=sendMesssageName;
              getMessages1();
            }
             function getMessages1()
            {
                
                document.getElementById("d1").style.display="inline";
//                alert(typeof(guyEmail));
//                alert(sendMesssageName);
                 var xhttp = new XMLHttpRequest();


                xhttp.onreadystatechange = function ()
                {
                    if (this.readyState == 4 && this.status == 200)
                    {
                       
                       var res=xhttp.responseText.trim();
//                       alert(res);
//                         console.log(res);
                         
                         
                         //  Remove ""
                         var mainobj = JSON.parse(res);
                         
//                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          var arr = mainobj["ans"];
                        
//                         console.log(arr);
                        
                         
                         var ans="";
                         
                         
                        for (var i = 0; i < arr.length; i++)
                        {
                         singleobj=arr[i];
//                         console.log(singleobj);
                         if(guyEmail.match(singleobj["sender"]) &&sendreciever.match(singleobj["reciever"]) ){
                           
                       ans=ans+"<div><h4 id=\"left-messages\">"+singleobj["messages"]+"</h4></div>";
                     
                         }
                         if(sendreciever.match(singleobj["sender"]) &&guyEmail.match(singleobj["reciever"]) ){
//                          alert(singleobj["sender"]+","+singleobj["messages"]+" left");
 
                        ans=ans+"<div><h4 id=\"right-messages\">"+singleobj["messages"]+"</h4></div>";
                      
                         }
                         
//                         alert(singleobj["reciever"]);
//                         alert("singleobj="+singleobj);
//                         if(singleobj["sender"].match(guyEmail)){
//                             alert(singleobj["messages"]+"="+singleobj["sender"]+" right");
//                         }
//                         else if(singleobj["sender"].match(sendMesssageName) && singleobj["reciever"].match(guyEmail)){
//                             alert(singleobj["messages"]+"="+singleobj["sender"]+" left");
//                         }
                            
                        }
                            
//                            ans = ans + "<table style=\"margin-left:50px;\" class=\"table  table-bordered\" style=\"color: white\">";
//                            ans = ans + "<tr> ";
//
//
////                            ans = ans + "<td>" + "Email ID" + "</td>";
////                            ans = ans + "<td>" + "Full Name" + "</td>";
////                            ans = ans + "<td>" + "Address" + "</td>";
////                            
////                            ans = ans + "<td>" + "Mobile" + "</td>";
////                            ans = ans + "<td>" + "Block" + "</td>";
////                             ans = ans + "<td>" + "Audit" + "</td>";
//                            ans = ans + "</tr>";
//                            
//                            for (var i = 0; i < arr.length; i++)
//                            {
//                                var singleobj = arr[i];
//                                  ans = ans + "<tr>";
////                                   ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
////                                ans = ans + "<td>"+ singleobj["fullname"] +"</td>";
////                                ans = ans + "<td>"+ singleobj["address"] +"</td>";
////                                ans = ans + "<td>"+ singleobj["mobile"] +"</td>";
//                             
//                               
//                                
////                                ans = ans + "<td>"+"<input type=\"button\" value=\"Block\" onclick=\"cancel('"+singleobj["emailid"]+"')\"/>"+"</td>";
////                                ans = ans + "<td>"+"<input type=\"button\" value=\"Audit\" onclick=\"auditUser('"+singleobj["emailid"]+"')\"/>"+"</td>";
////
////                            
//                                ans = ans + "</tr>";
//                            }
//
//                            ans = ans + "</table>";
//                        }
//                         
                        document.getElementById("d1").innerHTML = ans;
                        reloadMsg();
//                        
//                   
                    }
                };

                // Step 2
                xhttp.open("GET", "./get_messages", true);    // true --> async request

                // Step 3
                xhttp.send();
            }


              function loaddashboard(pl){
          
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
                         
//                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          arr = mainobj["ans"];
                         
//                         console.log(arr);
                         
                         
                         var ans="";
                         
//                         
//                        ans=ans+"<table style=\"color:white\" class=\"table table-bordered\">";
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
                        for(var i=0;i<arr.length;i++)
                         {
                             let plFlag=false;
//                            
                         
                             var singleobj = arr[i];
                             let programingLanguage=singleobj["projecttechnologies"];
//                            alert(programingLanguage);
                            let token = programingLanguage.split(",");
                            let token1 = pl.split(",");
                            for (let k = 0; k<token1.length; k++)
                            {
                             for (let j = 0; j<token.length; j++)
                             {
                              
                                 if((token1[k]).match(token[j]))
                                 {
                                     plFlag=true;
                                     break;
                                 }
                             }  
                         }
                             if(plFlag==true){
                                        
                              
                                 
                     var singleobj=arr[i];
                     
                    // ans+="<div class=\"row\">";
                     ans+="<div style=\"display:inline-block;\"  class=\"col-sm-12 col-lg-6 col-md-12\">";
                     ans=ans+"<table class=\"table table-hover\">";
                     ans=ans+"<tr style=\"background-image:url('images/38121.jpg'); background-size:600px 300px;\">";
//                         ans = ans+"<td width=\"20%\"><img src=\""+ singleobj["photo"] +"\" width='110' height='100' /></td>";
                       
                        ans=ans+"<td width=\"50%\"><h2>"+singleobj["projectname"]+"</h2> <br> <h5>"+singleobj["emailid"]+"</h5> <br> <h5>"+singleobj["projecttechnologies"]+"</h5> <br> <h5>"+singleobj["timeframe"]+"</h5></td>";
                         ans+="<td width=\"40%\"> <h4>Description</h4><h5>"+singleobj["discreption"]+"</h5></td>";
                        //  ans = ans+"<td>"+"<img src=\""+ singleobj["photo_cover"] +"\" width='100' height='100' />"+"</td>";
                        //   ans = ans+"<td>"+"<img src=\""+ singleobj["photo_profile"] +"\" width='100' height='100' />"+"</td>";
                          ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"Offer\" class=\"btn-outline-primary2\" onclick=\"offer('"+singleobj["projectid"]+"')\"/>"+"</td>";
                     ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"Rating\" class=\"btn-outline-primary2\" onclick=\"rating('"+singleobj["emailid"]+"')\"/>"+"</td>";
                           
                    ans=ans+"</tr>";
                        ans=ans+"</table>";

                     ans+="</div>";
                
                    
                             }
                             document.getElementById("d1").innerHTML=ans;


//********************
                         
                               ans = ans +"</table>";
                               
                            }
                         

                         document.getElementById("d1").innerHTML = ans;
                         
                     
            }
        };
                // Step 2
                 xhttp.open("GET", "./freelancer_view_jobs_dashboard", true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }
            
            function offer(pid)
            {
                
//                alert(pid);
                projectid=pid;
                $('#searchJobsByUsernameModal').modal('show');
            }
             function rating(pid1)
            {
                
//                alert(pid);
                
                useremail=pid1;
                $('#myModal14').modal('show');
            }
            function saveoffer()
            {
                var offerprice=document.getElementById("offerPrice").value;
              var xhttp = new XMLHttpRequest();
               
               
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
//                        document.getElementById("d1").innerHTML= xhttp.responseText.trim();
                        var r = xhttp.responseText.trim();
//                        alert(r);
                        if(r=="success")
                        {
//                         document.getElementById("d1").innerHTML="Login Successfull";
//                          window.location.href="customer_home.jsp";
                           
                           alert("Offer sent to Project Owner");
                           $('#searchJobsByUsernameModal').modal('hide'); 
                           document.getElementById("offerPrice").value="";
                        }
                        else if(r=="error")
                        {
                            
                        alert("offer Invalid")  
                        }
                        
                        
                    }
                };
                
                 
                xhttp.open("GET", "./save_offer_servlet?pr="+projectid+"&op="+offerprice, true);    
                
               
                xhttp.send();
                
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
           function getProfile()
           {
               
             var xhttp = new XMLHttpRequest();


                xhttp.onreadystatechange = function ()
                {
                    if (this.readyState == 4 && this.status == 200)
                    {
                       
                       var res=xhttp.responseText.trim();
                       
//                         console.log(res);
//                         alert("result="+res);
                         
                         //  Remove ""
                         var mainobj = JSON.parse(res);
                         
//                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          var arr = mainobj["ans"];
                        
//                         console.log(arr);
                        
                         
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
                ans = ans + "<td style=\"white-space:nowarp;\">"+ "Email: "+singleobj["emailid"] +"</td>";
                ans = ans + "<td style=\"white-space:nowarp;\">"+ "Mobile: "+singleobj["mobile"] +"</td>";      
                ans = ans + "<td style=\"white-space:nowarp;\">"+ "Languages: "+singleobj["programminglanguage"] +"</td>";
                ans = ans + "<td style=\"white-space:nowarp;\">"+ "Frontend:"+singleobj["frontend"] +"</td>"; 
                ans = ans + "<td style=\"white-space:nowarp;\">"+ "Backend: "+singleobj["backend"] +"</td>"; 
                ans = ans + "<td style=\"white-space:nowarp;\">"+ "Experience: "+singleobj["experience"] +"</td>"; 
                ans = ans + "<td style=\"white-space:nowarp;\">"+ "Certifications: "+singleobj["certification"] +"</td>"; 
                //  ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"Offer\" class=\"btn-outline-primary2\" onclick=\"viewoffer("+singleobj["projectid"]+")\"/>"+"</td>";
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
                xhttp.open("GET", "./view_freelancer_profile", true);    // true --> async request

                // Step 3
                xhttp.send();
            }  
              
    
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
                           window.location.href="FreelancerHome.jsp";
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
        
        </script>
</html>
