import java.io.*;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Collection;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import vmm.*;

@MultipartConfig
public class client_project_create extends HttpServlet 
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       response.setContentType("text/html");
    
       PrintWriter out = response.getWriter();
           
       try
       {
          
        // Receive ALL Files  
          
       //   Part p1 = request.getPart("cover_photo");
           
          // String city = request.getParameter("sl1"); 
          String projectname = request.getParameter("projectname");
          
           String projectdesc = request.getParameter("projectdesc");
           String planguages = request.getParameter("planguages");
            String frameworks = request.getParameter("frameworks");
             String timeframe = request.getParameter("timeframe");
        String email = request.getParameter("email1");  
        String tech=planguages+","+frameworks;
        String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
             HttpSession session = request.getSession();
//  String email="abc@gmail.com";  
      //  System.out.println("emai");    
           System.out.println(timeframe);
           //System.out.println(projectdesc);
          ResultSet rs = DBLoader.executeQuery("select * from create_project" );
         ResultSet rsAudit = DBLoader.executeQuery("select * from audit_users");
         
              System.out.println("inserting ");
            rs.moveToInsertRow();
                       
          
            rs.updateString("emailid",email);
           
            rs.updateString("projectname",projectname);
            rs.updateString("discreption",projectdesc );
            rs.updateString("planguages",planguages);
            rs.updateString("frameworks",frameworks);
            rs.updateString("timeframe",timeframe);
            rs.updateString("projecttechnologies",tech);
            
            
         //    rs.updateString("status", "pending");
          
             
           
              rs.insertRow();
            //  HttpSession session = request.getSession();
           rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",(session.getAttribute("emailid1")).toString());
            rsAudit.updateString("action","Client Ticket Created");
            rsAudit.updateString("timestamp",timeStamp);
    
            

          
             
           
              rsAudit.insertRow();     
                
                     
            out.println("success");
       }
       catch(Exception ex)
       {
          ex.printStackTrace(); 
       }
    }   

}

