import java.io.*;
import java.sql.ResultSet;
import java.util.Collection;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import vmm.*;

@MultipartConfig
public class freelancer_status_servlet extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
                                                            throws ServletException, IOException 
    {
       response.setContentType("text/html");
    
       PrintWriter out = response.getWriter();
           
       try
       {
          
        
          
           String remail = request.getParameter("bid2");
           String status = "block";
            
     
          ResultSet rs = DBLoader.executeQuery("select * from customer_signup where emailid='"+remail+"'");
         
          if(rs.next())
          {
              System.out.println("Match");
            rs.updateString("status",status);
            rs.updateRow();
           out.println("success");
            
           
      
            //  HttpSession session = request.getSession();
                
                
                     
        
          }
          else
          {
              System.out.println("fail ");
               
                     
            out.println("fail");
          }
              
        
       }
       catch(Exception ex)
       {
          ex.printStackTrace(); 
       }
    }   

}