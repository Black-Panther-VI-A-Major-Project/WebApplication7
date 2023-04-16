
import java.io.*;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Collection;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import vmm.*;

@MultipartConfig
public class send_message extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       response.setContentType("text/html");
    
       PrintWriter out = response.getWriter();
           
       try
       {
           
          String msg = request.getParameter("msg");
          String msgreciever = request.getParameter("user");
           System.out.println("msg is"+msg);
           System.out.println("user is"+msgreciever);
           
             HttpSession session = request.getSession();
              String msgsender=request.getParameter("user1");
           
     String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
          ResultSet rs = DBLoader.executeQuery("select * from messages");
         ResultSet rsAudit = DBLoader.executeQuery("select * from audit_users");
         
          
              System.out.println("inserting ");
            rs.moveToInsertRow();
                       
          
            rs.updateString("messages",msg);
           rs.updateString("sender",msgsender);
     rs.updateString("reciever",msgreciever);
          
             
           
              rs.insertRow();
              
              rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",msgsender);
            rsAudit.updateString("action","Send Message");
            rsAudit.updateString("timestamp",timeStamp);
    
            

          
             
           
              rsAudit.insertRow();
            //  HttpSession session = request.getSession();
                
                
                     
            out.println("success");
          
              
        
       }
       catch(Exception ex)
       {
          ex.printStackTrace(); 
       }
    }   

}

