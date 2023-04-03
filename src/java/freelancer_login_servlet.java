import java.io.*;
import java.sql.*;
import java.text.SimpleDateFormat;

import javax.servlet.*;
import javax.servlet.http.*;
import vmm.DBLoader;


public class freelancer_login_servlet extends HttpServlet
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
                String username = request.getParameter("u");
                String password = request.getParameter("p");
                System.out.println("user"+username+" "+password);
                String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
             HttpSession session = request.getSession();
                

                
                ResultSet rs = DBLoader.executeQuery("select * from customer_signup where emailid='"+username+"' and password='"+password+"'");
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
                    session.setAttribute("freelancerEmail", username);
                    if(status.equals("block"))
                    {
                   out.println("block");

                    }
                    else
                    {
                        rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",username);
            rsAudit.updateString("action","Freelancer Login");
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