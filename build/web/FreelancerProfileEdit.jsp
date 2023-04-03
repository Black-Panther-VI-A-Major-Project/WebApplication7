<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <script src="js/jquery-3.5.0.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Freelancer Edit Profile</title>
        
        <script>
            
                let pl="";
                let fe="";
                let be="";
            function exitingData(){
               document.getElementById("email").value="<%= session.getAttribute("freelancerEmail") %>";
            }
            
            function editCheck()
            {
                let programmingLanguage=document.getElementsByClassName("programmingLanguage");
              
                for(let i=0;i<5;i++)
                {
                    if(programmingLanguage[i].checked === true){
                      
                           pl+=programmingLanguage[i].value+","; 
                        
                        
                    }
                }
                let l1=pl.length;
                pl=pl.substring(0,l1-1);
//                alert(pl);
                
                let frontend=document.getElementsByClassName("frontend");
                for(let i=0;i<5;i++)
                {
                    if(frontend[i].checked === true){
                    
                           fe+=frontend[i].value+","; 
                     
                    }
                }
                let l2=fe.length;
                fe=fe.substring(0,l2-1);
             
//                 alert(fe);
                
                
                let backend=document.getElementsByClassName("backend");
                for(let i=0;i<5;i++)
                {
                    if(backend[i].checked === true){
                 
                           be+=backend[i].value+","; 
                 
                        
                    }
                }
                  let l3=be.length;
                be=be.substring(0,l3-1);
//                 alert(be);
                
                var emptyflag=false;
//                var emailflag=false;
                
                var mobflag=false;
                var rateFlag=false;
               
               // var city =document.getElementById("city").value;
//                var email=document.getElementById("email").value;
//                var fullname =document.getElementById("name").value;
            //    var remail=document.getElementById("remail").value;
//                var pass=document.getElementById("pass1").value;
               // var pass1=document.getElementById("pass1").value;
//                var addr=document.getElementById("address").value;
                var mob=document.getElementById("mob").value;
              //  var rcover=document.getElementById("rcover").src;
              //  var rprofile=document.getElementById("rprofile").src;
             //   var question=document.getElementById("question").value;
              //  var answer=document.getElementById("answer").value;
              var hr=document.getElementById("hourlyrate").value;
            
               
               
                
                if(hr=="" || mob=="")
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
 
            
//           
////            var flagspecial=false;
//            var dotflag=0;
//            var digitFlag=0;
//            rateflag=0
//            var a=0;
//            var b=0;
//             for(var i=0;i<hr.length;i++){
//               var m=hr.charAt(i);
//                    if(m<'0' && m>'9' )
//                    {
//                        if{
//                     if(m==='.')
//                     {
//                         dotflag=1;
//                     }
//                    }
//                        
//                       digitflag=1;
//                      
//                        document.getElementById("error").style.color="red";
//                        document.getElementById("l1").innerHTML="Hourly Rate must be all Digits or a dot!!!";
//                         break;
//                    }
                if(emptyflag==true && mobflag==true)
                addEdit();    
          
        }
//            
//               }
           
         
           
             function addEdit()
             {
                    var ans = "";
                var formdata = new FormData();
                
                var controls = document.getElementById("editForm").elements;
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
//                            alert("result=" +r);
//                             if(r=="error")
//                        {
//                          alert("Client alredy exists");
//                          
//                        }
                       if(r=="success")
                        {
//                             alert("Signup Successfull");
                              document.getElementById("error").style.color="green";
                        document.getElementById("l1").innerHTML="Edit Succesful";
//                          var element = document.getElementById(" form1 ");
//                          element.reset();
                             
                        }
                    }
                    };
                    
                    xhr.open("POST", "./freelancer_profile_edit?pl="+pl+"&fe="+fe+"&be="+be, true);
                    
//                    alert("Sending Request to Server");
                    
                    //console.log(formdata);
                    
                    // ALso send FORM-Data with AJAX REQUEST
                    xhr.send(formdata);
                }
                 }
 
 
 function readandpreview(fileobj, imageid)
            {
                var firstfile = fileobj.files[0];
                var reader = new FileReader();
                reader.onload = (function (f)
                {
                    return function read(e)
                    {
                        document.getElementById("img1").hidden=false;
                        document.getElementById(imageid).src = e.target.result;
                    }
                })(firstfile);
                reader.readAsDataURL(firstfile);
            }
             
            </script>
    </head>
    <body onload="exitingData()">
       <div class="container" >
         <jsp:include page="FreelacerHomeHeader.jsp" />
        
        <br>
        <br>  
            <div class="row">
                <div class="col-sm-12">
                    
                        <center> <h1 class="h1"> Edit Profile</h1></center>
                   
                </div>
            </div>
         
            <div class="row">
                <div class="col-sm-12">
                
                    
              <form id="editForm" method="post" enctype="multipart/form-data" >
                       
                      
                        
                        <div class="form-group form-row" >
                            <label for="email" class="col-sm-3">Email Id</label>
                            <input type="text" name="email"  id="email" class="form-control col-sm-9"  disabled="disabled"/> 
                        </div>
                        
<!--                        <div class="form-group form-row">
                            <label for="pass" class="col-sm-3">Password </label>
                            <input type="password" name="pass1" id="pass1" class="form-control col-sm-9" /> 
                        </div>-->
                        
<!--                        <div class="form-group form-row" >
                            <label for="name" class="col-sm-3">Full Name</label>
                           <input type="text" name="name"  id="name" class="form-control col-sm-9" />
                        </div>-->
                        <div class="form-group form-row" >
                            <label for="mobile" class="col-sm-3">Mobile Number</label>
                            <input type="text" name="mob"  id="mob" class="form-control col-sm-9" /> 
                        </div>
                         
                        
                        <div class="form-group form-row" >
                            <label for="Address" class="col-sm-3">Hourly Rate</label>
                           <input type="text" name="hourlyrate"  id="hourlyrate" class="form-control col-sm-9" /> 
                        </div>
                        <div class="form-group form-row" >
                                                    <label for="pl" class="col-sm-3">Programming languages</label>
                                                    <div><span>Java</span>      <input type="checkbox" class="programmingLanguage" name="pl1"  id="pl1" style="margin-right: 16px;" value="java"/> </div>
                                                    <div><span>Python</span>      <input type="checkbox" class="programmingLanguage" name="pl2"  id="pl2" style="margin-right: 16px;" value="python"/> </div>
                                                     <div><span>Ruby</span>      <input type="checkbox" class="programmingLanguage" name="pl3"  id="pl3" style="margin-right: 16px;" value="ruby"/> </div>
                                                      <div><span>Perl</span>      <input type="checkbox" class="programmingLanguage" name="pl4"  id="pl4" style="margin-right: 16px;" value="perl"/> </div>
                                                       <div><span>Swift</span>      <input type="checkbox" class="programmingLanguage" name="pl5"  id="pl5" style="margin-right: 16px;" value="swift"/> </div>
                                                    
                                                  
                                                </div>
                          <div class="form-group form-row" >
                                                    <label for="pl" class="col-sm-3">Front End Frameworks</label>
                                                    <div><span>Angular</span>      <input class="frontend" type="checkbox" name="fe1"  id="fe1" style="margin-right: 16px;" value="angular"/> </div>
                                                    <div><span>Vue.js</span>      <input class="frontend" type="checkbox" name="fe2"  id="fe2" style="margin-right: 16px;" value="vue.js"/> </div>
                                                     <div><span>Django</span>      <input class="frontend" type="checkbox" name="fe3"  id="fe3" style="margin-right: 16px;" value="django"/> </div>
                                                      <div><span>React.js</span>      <input class="frontend" type="checkbox" name="fe4"  id="fe4" style="margin-right: 16px;" value="react.js"/> </div>
                                                       <div><span>Laravel</span>      <input class="frontend" type="checkbox" name="fe5"  id="fe5" style="margin-right: 16px;" value="laravel"/> </div>
                                                    
                                                  
                                                </div>

 <div class="form-group form-row" >
                                                    <label for="pl" class="col-sm-3">Back End Frameworks</label>
                                                    <div><span>Spring</span>      <input type="checkbox" class="backend" name="be1"  id="be1" style="margin-right: 16px;" value="spring"/> </div>
                                                    <div><span>Flask</span>      <input type="checkbox" class="backend" name="be2"  id="be2" style="margin-right: 16px;" value="flask"/> </div>
                                                     <div><span>Express.js</span>      <input type="checkbox" class="backend" name="be3"  id="be3" style="margin-right: 16px;" value="express.js"/> </div>
                                                      <div><span>JEE</span>      <input type="checkbox" class="backend" name="be4"  id="be4" style="margin-right: 16px;" value="jee"/> </div>
                                                       <div><span>Laravel</span>      <input type="checkbox" class="backend" name="be5"  id="be5" style="margin-right: 16px;" value="laravel"/> </div>
                                                    
                                                  
                                                </div>
                        
                        <div class="form-group form-row" >
                            <label for="experience" class="col-sm-3">Experience</label>
                            <textarea  name="experience"  id="experience" class="form-control col-sm-9" /> </textarea>
                        </div>
<div class="form-group form-row" >
                            <label for="certification" class="col-sm-3">Certification</label>
                            <textarea  name="certification"  id="certification" class="form-control col-sm-9" /> </textarea>
                        </div>

<!--<div class="form-group form-row">
                            <label for="photo" class="col-sm-3"> Photo</label>
                            <input type="file"  id="cover_photo" name="cover_photo" accept="image/*" onchange="readandpreview(this, 'img1')"  /> 
                          
                            <img src="" width="500" height="300" id="img1" hidden="true" class="offset-30">
                        </div>-->
                   
                        
                        <div class="form-group">
                         <div  id="d11" class="row"  >
                          
                    </div>
                        </div>
                    </form>
                    
                    <div class="form-group form-row">
                            <input type="button" value="Edit" class="btn-primary btn-lg col-sm-3 offset-3" onclick="editCheck()" />
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