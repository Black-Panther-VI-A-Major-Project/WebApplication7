<%-- 
    Document   : AdminHome
    Created on : 18-Mar-2023, 9:53:54 am
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url('images/admin_bg1.jpg'); background-size:1550px 3000px;">
        <jsp:include page="AdminHeader.jsp" />   
        <h1 style="color:black;">Hello Admin</h1>
    <div style=\"display:inline-block;\"  class=\"col-sm-12 col-lg-6 col-md-12>
                 <table class="table table-hover">
                     <tr style="background-image:url('images/admin-t-bg.jpg'); background-size:1550px 300px;">
                       
              <td width="60%"><h2>No. of Total Freelancers:6</h2>   <br> <h2>No. of Active Freelancers: 5</h2>   <br> <h2>No. of Blocked Freelancers: 1</h2>  </td>
                       
              <td width="40%"><h2>Click button to view all Freelancers</h2><a href="AdminViewFreelancers.jsp"><input type="button" style="height:80px; margin-left:60px; margin-top:20px;  border-radius:20px;  width:350px;" value="Freelancers" class="btn-outline-primary2"></a> </td>
                       </tr>
                        </table>
    </div>
        <br><!-- comment -->
         <div style=\"display:inline-block;\"  class=\"col-sm-12 col-lg-6 col-md-12>
                 <table class="table table-hover">
                     <tr style="background-image:url('images/admin-t-bg.jpg'); background-size:1550px 300px;">
                       
              <td width="60%"><h2>No. of Total Clients: 6</h2>   <br> <h2>No. of Active Clients: 4</h2>   <br> <h2>No. of Blocked Clients: 2 </h2>  </td>
                       
              <td width="40%"><h2>Click button to view all Clients</h2><a href="AdminViewClients.jsp"><input type="button" style="height:80px; margin-left:60px; margin-top:20px;  border-radius:20px;  width:350px;" value="Clients" class="btn-outline-primary2"></a> </td>
                       </tr>
                        </table>
    </div>
        <br><!-- comment -->
        <div style=\"display:inline-block;\"  class=\"col-sm-12 col-lg-6 col-md-12>
                 <table class="table table-hover">
                     <tr style="background-image:url('images/admin-t-bg.jpg'); background-size:1550px 300px;">
                       
              <td width="60%"><h2>No. of Total Projects: 20</h2>   <br> <h2>No. of assigned Projects: 16</h2>   <br> <h2>No. of unassigned Projects: 4</h2>  </td>
                       
              <td width="40%"><h2>Click button to view all Projects</h2><a href="AdminViewProjects.jsp"><input type="button" style="height:80px; margin-left:60px; margin-top:20px;  border-radius:20px;  width:350px;" value="Projects" class="btn-outline-primary2"></a> </td>
                       </tr>
                        </table>
    </div>
 <jsp:include page="footer.jsp" />
       
    
    </body>
</html>
