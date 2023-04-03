<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #main-container{
/*                display:flex;
                flex-direction: row;*/
/*                background-color: gold;*/
                justify-content: center;/*
*/               max-width: 1200px;
                
            }
             #inner-container{
/*                display:flex;*/
/*                max-width: 1200px;*/
/*                flex-direction: column;
                background-color: gold;*/
                justify-content: center;
                
            }
            #d2{
                
/*               display:inline-block;*/
/*               margin-left:0px;
               margin-right: 0px;*/
               justify-content: center;
/*               align-items: center;
               max-width: 1200px;*/
/*               flex:5;*/
                flex:1;/*
                background-color: blue;*/
            }
           
        </style>
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
    </head>
    <body onload="realTimeSearch();">
            <jsp:include page="FreelacerHomeHeader.jsp" />
   
  
     
          <div class="container" >
       
        <br>
        <br>  
            <div class="row">
                <div class="col-sm-12">
                    
                        <center> <h1 class="h1">Search By User</h1></center>
                   
                </div>
            </div>
         
            <div class="row">
                <div class="col-sm-12">
                
                    
<!--              <form id="form1" method="post" enctype="multipart/form-data" >-->
                       
                      
                        
                       
                        

 
  <div class="form-group form-row" >
                            <label for="search-box" class="col-sm-3">Username</label>
<!--                            <input type="text" name="search-box"  id="search-box" class="form-control col-sm-9" /> -->
                             <input id="search-box" type="text" class="form-control col-sm-9" >
                        </div>

  

<!--                        <div class="form-group form-row">
                            <label for="pass" class="col-sm-3">Password </label>
                            <input type="password" name="pass1" id="pass1" class="form-control col-sm-9" /> 
                        </div>-->
                        
<!--                        <div class="form-group form-row" >
                            <label for="name" class="col-sm-3">Full Name</label>
                           <input type="text" name="name"  id="name" class="form-control col-sm-9" />
                        </div>-->
<!--                        <div class="form-group form-row" >
                            <label for="mobile" class="col-sm-3">Mobile Number</label>
                            <input type="text" name="mob"  id="mob" class="form-control col-sm-9" /> 
                        </div>-->
                         
                        
<!--                        <div class="form-group form-row" >
                            <label for="Address" class="col-sm-3">Address</label>
                            <textarea  name="address"  id="address" class="form-control col-sm-9" /> </textarea>
                        </div>-->
                        
                        
                        
                   
                      
                  
                    
<!--                    <div class="form-group form-row">
                            <input type="button" value="" class="btn-primary btn-lg col-sm-3 offset-3" onclick="check()" />
                        </div>-->
                  
                    
                    
                
                </div>
            </div>
            
        </div>

   
 

  <div id="d2"></div>
  
                   
                    
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
                
                    
               
                        
                        <div class="form-group form-row">
                            <label for="userSearch" class="col-sm-3">Enter Username</label>
                            <input type="text"  name="userSearch"  id="userSearch" class="form-control col-sm-9" />
                        </div>
                       
                       
                       
               
                   
                
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
        let searchText=document.getElementById("search-box");
        searchText.addEventListener('keyup',filter);
        searchText.addEventListener('keydown',noFilter);
        searchText.addEventListener('keyup',clear);
       
       function clear(e){
            let text=e.target.value.toLowerCase();
            
              let key=e.keyCode ||e.charCode;
           if(key==8 || key==46){
             if(text.length<1){
               console.log("empty");
                document.querySelectorAll('.client-email').forEach(function(task){
             task.parentElement.parentElement.parentElement.parentElement.parentElement.style.display='none';
             
                });
           }          
           }
       }
        function filter(e){
           console.log("ho");
            console.log("*******************");
            let text=e.target.value.toLowerCase();
//            
//              let key=e.keyCode ||e.charCode;
//           if(key==8 || key==46){
//             if(text.length<1){
//               console.log("empty");
//                document.querySelectorAll('.jobs-techs').forEach(function(task){
//             task.parentElement.parentElement.parentElement.parentElement.parentElement.style.display='none';
//             
//                });
//           }
//           
//           }
//            let empty="";
//            if(text.match(empty)){
//                alert("jaj");
//                document.querySelectorAll('.jobs-techs').forEach(function(task){
//               task.parentElement.parentElement.parentElement.parentElement.parentElement.style.display='none';
//              
//                });
//            }

            document.querySelectorAll('.client-email').forEach(function(task){
                tasktext=task.textContent;
                let plFlag=false;
                  let token1 = tasktext.split(",");
                            
                            for (let k = 0; k<token1.length; k++)
                            {
                           
                                 if((token1[k]).toLowerCase().match(text))
                                 {
                                     plFlag=true;
                                     break;
                                 }
                              
                         }
                         if(plFlag==true){
                             task.parentElement.parentElement.parentElement.parentElement.parentElement.style.display='inline-block';
                            
//                             console.log(v);
//                             display:inline-block;
                             
                         }
//                console.log(tasktext);
            });
//            
        }
        
        function noFilter(e){
           
            console.log("*******************");
            let text=e.target.value.toLowerCase();
//            let empty="";
//            if(text.match(empty)){
//                document.querySelectorAll('.jobs-techs').forEach(function(task){
//               task.parentElement.parentElement.parentElement.parentElement.parentElement.style.display='none';
//
//                });
//            }
 
//           let key=e.keyCode ||e.charCode;
//           if(key==8 || key==46){
//             if(text.length<1){
//                 console.log("empty");
//                document.querySelectorAll('.jobs-techs').forEach(function(task){
//                            task.parentElement.parentElement.parentElement.parentElement.parentElement.style.display='none';
//
//
//                });
//           }
//           
//           }
            document.querySelectorAll('.client-email').forEach(function(task){
                tasktext=task.textContent;
                let plFlag=false;
                  let token1 = tasktext.split(",");
                            
                            for (let k = 0; k<token1.length; k++)
                            {
                           
                                 if(!((token1[k]).toLowerCase().match(text)))
                                 {
                                     plFlag=true;
                                     break;
                                 }
                              
                         }
                         if(plFlag==true){
                             task.parentElement.parentElement.parentElement.parentElement.parentElement.style.display='none';
                            
//                             console.log(v);
//                             display:inline-block;
                             
                         }
//                console.log(tasktext);
            });
        }
        
        var tableheadflag="";
              var ans="";    
              var ans1="";   
        function Freelancerdata()
        {
            
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
                         
                         
                      
                         
                        for(var i=0;i<arr.length;i++)
                         {
                           
                         
                         for(var i=0;i<arr.length;i++)
                         {
                             var singleobj = arr[i];
                             
                            
                                ans = ans +  singleobj["technologies"];
                            
                               }
                               ans1=ans;
                               
                               
                           
                             loaddashboard(ans);
                          
                            }
                         
//                         document.getElementById("d1").innerHTML = ans;
//                         
                    }
                };
                
                // Step 2
                xhttp.open("GET", "./freelancer_view_jobs", true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }  
            
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
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          arr = mainobj["ans"];
                         
                         console.log(arr);
                         
                         
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
                       
                        ans=ans+"<td width=\"50%\"><h2>"+singleobj["projectname"]+"</h2> <br> <h5 class=\"client-email\">"+singleobj["emailid"]+"</h5> <br> <h5>"+singleobj["projecttechnologies"]+"</h5> <br> <h5>"+singleobj["timeframe"]+"</h5></td>";
                         ans+="<td width=\"40%\"> <h4>Description</h4><h5>"+singleobj["discreption"]+"</h5></td>";
                        //  ans = ans+"<td>"+"<img src=\""+ singleobj["photo_cover"] +"\" width='100' height='100' />"+"</td>";
                        //   ans = ans+"<td>"+"<img src=\""+ singleobj["photo_profile"] +"\" width='100' height='100' />"+"</td>";
                          ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"Offer\" class=\"btn-outline-primary2\" onclick=\"updateCart("+singleobj["food_item_id"]+")\"/>"+"</td>";
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
            
            //*******************************
            
             function realTimeSearch(){
          
                   //   alert(pl);
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
//                             let plFlag=false;
//                            
                         
                             var singleobj = arr[i];
//                             let programingLanguage=singleobj["projecttechnologies"];
//                            alert(programingLanguage);
//                            let token = programingLanguage.split(",");
//                            let token1 = pl.split(",");
//                            for (let k = 0; k<token1.length; k++)
//                            {
//                             for (let j = 0; j<token.length; j++)
//                             {
//                              
//                                 if((token1[k]).match(token[j]))
//                                 {
//                                     plFlag=true;
//                                     break;
//                                 }
//                             }  
////                         }
//                             if(plFlag==true){
                                        
                              
                      
//                     display:inline-block;
                    // ans+="<div class=\"row\">";
                     ans+="<div style=\"display:none;\"  class=\"col-sm-12 col-lg-6 col-md-12\">";
                     ans=ans+"<table class=\"table table-hover\">";
                     ans=ans+"<tr style=\"background-image:url('images/38121.jpg'); background-size:600px 300px;\">";
//                         ans = ans+"<td width=\"20%\"><img src=\""+ singleobj["photo"] +"\" width='110' height='100' /></td>";
                       
                        ans=ans+"<td width=\"50%\"><h2>"+singleobj["projectname"]+"</h2> <br> <h5 class=\"client-email\">"+singleobj["emailid"]+"</h5> <br> <h5 class=\"jobs-techs\">"+singleobj["projecttechnologies"]+"</h5> <br> <h5>"+singleobj["timeframe"]+"</h5></td>";
                         ans+="<td width=\"40%\"> <h4>Description</h4><h5>"+singleobj["discreption"]+"</h5></td>";
                        //  ans = ans+"<td>"+"<img src=\""+ singleobj["photo_cover"] +"\" width='100' height='100' />"+"</td>";
                        //   ans = ans+"<td>"+"<img src=\""+ singleobj["photo_profile"] +"\" width='100' height='100' />"+"</td>";
                          ans=ans+"<td width=\"10%\">"+"<input type=\"button\" value=\"Offer\" class=\"btn-outline-primary2\" onclick=\"updateCart("+singleobj["food_item_id"]+")\"/>"+"</td>";
                        ans=ans+"</tr>";
                        ans=ans+"</table>";

                     ans+="</div>";
                
                    
                            
                             document.getElementById("d2").innerHTML=ans;


//********************
                         
                               ans = ans +"</table>";
                               
                            }
                         

                         document.getElementById("d2").innerHTML = ans;
                         
                     
            }
        };
                // Step 2
                 xhttp.open("GET", "./freelancer_view_jobs_dashboard", true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }
            
           
        </script>
</html>
