import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.ResultSet;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import vmm.DBLoader;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;



public class save_offer_servlet extends HttpServlet
{
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        final PrintWriter out = response.getWriter();
        try {
            final HttpSession session = request.getSession();
            final String projectid = request.getParameter("pr");
            final String offerprice = request.getParameter("op");
            final String femail = session.getAttribute("freelancerEmail").toString();
            System.out.println(projectid + " " + offerprice + " " + femail);
            System.out.println("Before DB Loader");
            final ResultSet rs = DBLoader.executeQuery("select * from freelancer_offer");
            System.out.println("Before If");
            if (rs.next()) {
                rs.deleteRow();
                rs.moveToInsertRow();
                rs.updateString("projectidforoffer", projectid);
                rs.updateString("price", offerprice);
                rs.updateString("freelancername", femail);
                rs.insertRow();
                out.println("success");
            }
            else {
                rs.moveToInsertRow();
                rs.updateString("projectidforoffer", projectid);
                rs.updateString("price", offerprice);
                rs.updateString("freelancername", femail);
                rs.insertRow();
                out.println("success");
            }
        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}