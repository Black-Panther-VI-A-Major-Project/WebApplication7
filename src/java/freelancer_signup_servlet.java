import java.io.*;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Collection;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import vmm.*;

@MultipartConfig
public class freelancer_signup_servlet extends HttpServlet 
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
          String rname = request.getParameter("name");
          
           String remail = request.getParameter("email");
           String rpass = request.getParameter("pass1");
            String raddr = request.getParameter("address");
             String rmob = request.getParameter("mob");
             String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
             HttpSession session = request.getSession();
              
           
    //      String abspath = getServletContext().getRealPath("/CustomerCover");
          
           
          
          //String filename1 = vmm.FileUploader.savefileonserver(p1, abspath, System.currentTimeMillis()+".jpg");
          
//          out.println("File 1 "+filename1);
//System.out.println("File name"+filename1);
         
          //out.println("<h2>All Files Uploaded to Server</h2>");
            
          // Now receive text data
          
          
         // out.println("<h3>Text Data</h3>");
          //out.println("<h4>username : "+un+"</h4>");
          //out.println("<h4>password: "+ps+"</h4>");
          
      //   String otp1=""+(int)(Math.random()*10000);
          ResultSet rs = DBLoader.executeQuery("select * from customer_signup where emailid='"+remail+"'");
         ResultSet rsAudit = DBLoader.executeQuery("select * from audit_users");
          if(rs.next())
          {
              out.println("error");
          }
          else
          {
              System.out.println("inserting ");
            rs.moveToInsertRow();
                       
          
            rs.updateString("fullname",rname);
           
            rs.updateString("emailid",remail);
            rs.updateString("password",rpass);
            rs.updateString("address",raddr);
            rs.updateString("mobile",rmob);
            
           
            
             rs.updateString("status", "pending");
          
             
           
              rs.insertRow();
            //  HttpSession session = request.getSession();
                rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",(session.getAttribute("freelancerEmail")).toString());
            rsAudit.updateString("action","Client Signup");
            rsAudit.updateString("timestamp",timeStamp);
    
            

          
             
           
              rsAudit.insertRow();
                
                     
            out.println("success");
          }
              
        
       }
       catch(Exception ex)
       {
          ex.printStackTrace(); 
       }
    }   

}

