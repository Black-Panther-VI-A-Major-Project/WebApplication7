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

// 
// Decompiled by Procyon v0.5.36
// 

@MultipartConfig
public class freelancer_profile_edit extends HttpServlet
{
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        final PrintWriter out = response.getWriter();
        try {
            final String pl = request.getParameter("pl");
            final String remail = request.getParameter("email");
            final String fe = request.getParameter("fe");
            final String be = request.getParameter("be");
            final String rmob = request.getParameter("mob");
            final String experience = request.getParameter("experience");
            final String certification = request.getParameter("certification");
            final String freetech = pl + "," + fe + "," + be;
            final ResultSet rs = DBLoader.executeQuery("select * from freelancer_profile where emailid='" + remail + "'");
            String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
             HttpSession session = request.getSession();
             ResultSet rsAudit = DBLoader.executeQuery("select * from audit_users");
            if (rs.next()) {
                rs.deleteRow();
                System.out.println("inserting ");
                rs.moveToInsertRow();
                rs.updateString("mobile", rmob);
                rs.updateString("emailid", remail);
                rs.updateString("programminglanguage", pl);
                rs.updateString("frontend", fe);
                rs.updateString("backend", be);
                rs.updateString("technologies", freetech);
                rs.updateString("certification", certification);
                rs.updateString("experience", experience);
                rs.insertRow();
                
                rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",(session.getAttribute("freelancerEmail")).toString());
            rsAudit.updateString("action","Freelancer Profile Edit");
            rsAudit.updateString("timestamp",timeStamp);
    
            

              rsAudit.insertRow();
                out.println("success");
            }
            else {
                System.out.println("inserting ");
                rs.moveToInsertRow();
                rs.updateString("mobile", rmob);
                rs.updateString("emailid", remail);
                rs.updateString("programminglanguage", pl);
                rs.updateString("frontend", fe);
                rs.updateString("backend", be);
                rs.updateString("technologies", freetech);
                rs.updateString("certification", certification);
                rs.updateString("experience", experience);
                rs.insertRow();
                out.println("success");
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}