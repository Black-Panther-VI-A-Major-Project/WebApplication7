import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import javax.servlet.http.HttpSession;
import vmm.RDBMS_TO_JSON;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;
import vmm.DBLoader;



public class get_all_freelancers extends HttpServlet
{
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
       try{
        String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
             HttpSession session = request.getSession();
        response.setContentType("text/html");
        ResultSet rsAudit = DBLoader.executeQuery("select * from audit_users");
        final PrintWriter out = response.getWriter();
        final String ans = new RDBMS_TO_JSON().generateJSON("select * from freelancer_profile");
        rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",(session.getAttribute("emailid1")).toString());
            rsAudit.updateString("action","Client search");
            rsAudit.updateString("timestamp",timeStamp);
    
            

          
             
           
              rsAudit.insertRow();
        out.print(ans);
       }
       catch(Exception ex)
       {
          ex.printStackTrace(); 
       }
    }
}