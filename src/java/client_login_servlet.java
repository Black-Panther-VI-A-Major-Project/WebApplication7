import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;

import javax.servlet.*;
import javax.servlet.http.*;
import vmm.DBLoader;


public class client_login_servlet extends HttpServlet
{
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
                                                            throws ServletException, IOException 
    {
      
        // Step 1
        response.setContentType("text/html");
        
        // Step 2
        PrintWriter out = response.getWriter();
        
       
            try
            {
                String username = request.getParameter("u1");
                String password = request.getParameter("p1");
                System.out.println("user"+username+" "+password);
                String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
             HttpSession session = request.getSession();
                

                
                ResultSet rs = DBLoader.executeQuery("select * from client_signup where emailid='"+username+"' and password='"+password+"'");
                
               ResultSet rsAudit = DBLoader.executeQuery("select * from audit_users");
            
                if(rs.next())    // Login Successfull
                {    
//                    String mob=rs.getString("mobile");
//                    
//                     String otp2=rs.getString("otp");
//                     session.setAttribute("email1", username);
//                     session.setAttribute("otp", otp2);
                    String status=rs.getString("status");
//                    System.out.println(status);
//                   session.setAttribute("mobile", mob);
                   if(status.equals("block"))
                   {
                   out.println("block");

                    }
                    
                   else
                   {
                    session.setAttribute("emailid1",username);
                    rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",username);
            rsAudit.updateString("action","Client Login");
            rsAudit.updateString("timestamp",timeStamp);
    
            
              rsAudit.insertRow();
                    out.println("success");
                     
                   }
                   
                      
                    //response.sendRedirect("admin_home.jsp");
                    
                }
                else
                {
                  out.println("error");
                }
                
               
            }
            catch(Exception ex)
            {
                ex.printStackTrace();
            }
            
               
         
    
        
    }
}