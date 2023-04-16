import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.ResultSet;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import vmm.DBLoader;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;


@MultipartConfig
public class client_profile_edit extends HttpServlet
{
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        final PrintWriter out = response.getWriter();
        try {
            final String remail = request.getParameter("email");
            final String clientfullname = request.getParameter("clientfullname");
            final String address = request.getParameter("address");
            final String rmob = request.getParameter("mob");
            String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
             HttpSession session = request.getSession();
            final ResultSet rs = DBLoader.executeQuery("select * from client_profile where emailid='" + remail + "'");
         ResultSet rsAudit = DBLoader.executeQuery("select * from audit_users");
            if (rs.next()) {
                rs.deleteRow();
                System.out.println("inserting ");
                rs.moveToInsertRow();
                rs.updateString("mobile", rmob);
                rs.updateString("emailid", remail);
                rs.updateString("fullname", clientfullname);
                rs.updateString("address", address);
                rs.insertRow();
                rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",(session.getAttribute("emailid1")).toString());
            rsAudit.updateString("action","Client Profile Edit");
            rsAudit.updateString("timestamp",timeStamp);
    
            

          
             
           
              rsAudit.insertRow();
             
                
             
                out.println("success");
            }
            else {
                System.out.println("inserting ");
                rs.moveToInsertRow();
                rs.updateString("mobile", rmob);
                rs.updateString("emailid", remail);
                rs.updateString("fullname", clientfullname);
                rs.updateString("address", address);
                rs.insertRow();
                rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",(session.getAttribute("emailid1")).toString());
            rsAudit.updateString("action","Client Profile Edit");
            rsAudit.updateString("timestamp",timeStamp);
    
            

          
             
           
              rsAudit.insertRow();
                out.println("success");
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}