<%-- 
    Document   : rest_view_order
    Created on : 19 May, 2020, 2:39:49 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
            var sr=0;
            function view()
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
                         
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          var arr = mainobj["ans"];
                        
                         console.log(arr);
                        
                         
                         var ans="";
                         
                         
                        for (var i = 0; i < arr.length; i++)
                        {
                            
                            ans = ans + "<table  class=\"table table-bordered\" style=\"color: white\">";
                            ans = ans + "<tr> ";


                            ans = ans + "<td>" + "Email ID" + "</td>";
                            ans = ans + "<td>" + "Full Name" + "</td>";
                            ans = ans + "<td>" + "Address" + "</td>";
                            
                            ans = ans + "<td>" + "Mobile" + "</td>";
                            ans = ans + "<td>" + "Block" + "</td>";
                              ans = ans + "<td>" + "Audit" + "</td>";
                             
                            ans = ans + "</tr>";
                            
                            for (var i = 0; i < arr.length; i++)
                            {
                                var singleobj = arr[i];
                                  ans = ans + "<tr>";
                                   ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
                                ans = ans + "<td>"+ singleobj["fullname"] +"</td>";
                                ans = ans + "<td>"+ singleobj["address"] +"</td>";
                                ans = ans + "<td>"+ singleobj["mobile"] +"</td>";
                             
                               
                                   ans = ans + "<td>"+"<input type=\"button\" value=\"Approve\" onclick=\"approve('"+singleobj["emailid"]+"')\"/>"+"</td>";

                                ans = ans + "<td>"+"<input type=\"button\" value=\"Block\" onclick=\"cancel('"+singleobj["emailid"]+"')\"/>"+"</td>";
                                                            ans = ans + "<td>"+"<input type=\"button\" value=\"Audit\" onclick=\"auditUser('"+singleobj["emailid"]+"')\"/>"+"</td>";

                            
                                ans = ans + "</tr>";
                            }

                            ans = ans + "</table>";
                        }
                         
                        document.getElementById("d11").innerHTML = ans;
                        
                   
                    }
                };
                 
                // Step 2
                xhttp.open("GET", "./admin_view_clients", true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }
            
            function approve(index)
            {
               
                var xhttp = new XMLHttpRequest();
               
               
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        
                        var r1 = xhttp.responseText.trim();
                        
                        if(r1=="success")
                        {
                         alert(r1);
                         view();   
                        }
                        else if(r1=="error")
                        {
                            
                         alert(r);   
                        }
                        
                        
                    }
                };
                
              
                xhttp.open("GET", "./client_approve_servlet?bid2="+index, true);    
                
               
                xhttp.send();
            }
            
            function cancel(index1)
            {
//               alert(index1);
                var xhttp = new XMLHttpRequest();
               
               
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        
                        var r1 = xhttp.responseText.trim();
                        
                        if(r1=="success")
                        {
                         alert(r1);
                         view();   
                        }
                        else if(r1=="error")
                        {
                            
                         alert(r);   
                        }
                        
                        
                    }
                };
                
              
                xhttp.open("GET", "./client_status_servlet?bid3="+index1, true);    
                
               
                xhttp.send();
            }
            
            function auditUser(auditMail){
//                alert(auditMail);
               
                var xhttp = new XMLHttpRequest();
               
               
                xhttp.onreadystatechange = function() 
                {
                    if (this.readyState == 4 && this.status == 200) 
                    {
                        
                        var r1 = xhttp.responseText.trim();
//                        alert("r1="+r1);
                        
              
                         
            
                         var mainobj = JSON.parse(r1);
//                         alert("mainobj="+mainobj);
                         console.log(mainobj);
                         
                         // Extract ans[] from mainobj
                          var arr = mainobj["ans"];
                        
//                         console.log(arr);
                        
                         
                         var ans="";
                         
                         
                                
                        //************************
                       
                       // #####################################
                                     $('#auditModal').modal('show');
                          
                          if(arr.length===0)
                          {
                              document.getElementById("d12").innerHTML = "<b style=\"font-size:24px; color:white; text-align:center;\">No Activity from User</b>";
                          }
                          else
                          {
                        for (var i = 0; i < arr.length; i++)
                        {
                            
                           ans = ans + "<table  class=\"table table-bordered\" style=\"color: white\">";
                            ans = ans + "<tr> ";


                            ans = ans + "<td>" + "Email ID" + "</td>";
                            ans = ans + "<td>" + "Action" + "</td>";
                            ans = ans + "<td>" + "Timestamp" + "</td>";
                         
                            ans = ans + "</tr>";
                            
                            for (var i = 0; i < arr.length; i++)
                            {
                              var singleobj = arr[i];
//                                alert("singleobj[\"emailid\"]="+singleobj["emailid"]);
                                if(singleobj["emailid"].match(auditMail)){
//                                    alert("in loop");
                                    ans = ans + "<tr>";
                                   ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
                                ans = ans + "<td>"+ singleobj["action"] +"</td>";
                                ans = ans + "<td>"+ singleobj["timestamp"] +"</td>";
                         
                                ans = ans + "</tr>";
                                }
                                
                            }

                            ans = ans + "</table>";
                        }
                         
                        document.getElementById("d12").innerHTML = ans;
                        
            }
                      //  ######################################
                    }
                };
                
              
                xhttp.open("GET", "./audit_user_servlet?auditEmail="+auditMail, true);    
                
               
                xhttp.send();
    
            }
            
        
           
            </script>
    </head>
    <body onload="view()">
         <jsp:include page="AdminHeader.jsp" />
        <br>
        <br>
        <h1 style="color: white"> Clients</h1>
        <br>
        <br>
        <div id="d11">
            </div>
        <div id="auditModal"  class="modal fade" role="dialog" >
                        <div class="modal-dialog" >

                            <!-- Modal content-->
                            <div class="modal-content" style="background-color: black">
                                
                                <div class="modal-header">
                                    <h4 class="modal-title" style="size: 16" >User Activity</h4>
                                    <button type="button" class="close" data-dismiss="modal" style="color: #FF0000;">&times;</button>
                                </div>
                                
                                <div class="modal-body">
                                   
                                     <div class="row" style="display:block;">
                <div class="d12" style="display:block;" id="d12">
                
                </div>
            </div>
                                  
                                </div>
                                
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-danger" data-dismiss="modal" >Close</button>
                                </div>
                                
                            </div>

                        </div>
                    </div>
        
         
        <br>
   <br>
                         <jsp:include page="footer.jsp" />
    </body>
</html>
