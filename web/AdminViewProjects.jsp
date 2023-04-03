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
            function viewProject()
            {
                 var xhttp = new XMLHttpRequest();


                xhttp.onreadystatechange = function ()
                {
                    if (this.readyState == 4 && this.status == 200)
                    {
                       
                       var res=xhttp.responseText.trim();
                       
                         console.log(res);
                         
                         
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


                            ans = ans + "<td>" + "Owner's ID" + "</td>";
                            ans = ans + "<td>" + "Project Name" + "</td>";
                            ans = ans + "<td>" + "Description" + "</td>";
                            
                            ans = ans + "<td>" + "Time Frame" + "</td>";
                            ans = ans + "<td>" + "Technologies" + "</td>";
                             
                            ans = ans + "</tr>";
                            
                            for (var i = 0; i < arr.length; i++)
                            {
                                var singleobj = arr[i];
                                  ans = ans + "<tr>";
                                   ans = ans + "<td>"+ singleobj["emailid"] +"</td>";
                                ans = ans + "<td>"+ singleobj["projectname"] +"</td>";
                                ans = ans + "<td>"+ singleobj["discreption"] +"</td>";
                                ans = ans + "<td>"+ singleobj["timeframe"] +"</td>";
                                ans = ans + "<td>"+ singleobj["projecttechnologies"] +"</td>";
                               
                                
                                
                                ans = ans + "</tr>";
                            }

                            ans = ans + "</table>";
                        }
                         
                        document.getElementById("d11").innerHTML = ans;
                        
                   
                    }
                };
                 
                // Step 2
                xhttp.open("GET", "./admin_view_project", true);    // true --> async request
                
                // Step 3
                xhttp.send();
            }
           
        
           
            </script>
    </head>
    <body onload="viewProject()">
         <jsp:include page="AdminHeader.jsp" />
        <br>
        <br>
        <h1 style="color: white"> Active Tickets</h1>
        
        <div id="d11">
            </div>
        
         
        <br>
   <br>
                         <jsp:include page="footer.jsp" />
    </body>
</html>
