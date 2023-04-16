import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import vmm.RDBMS_TO_JSON;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;


public class client_view_jobs extends HttpServlet
{
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        final HttpSession session = request.getSession();
        final String emailid = session.getAttribute("emailid1").toString();
        response.setContentType("text/html");
        final PrintWriter out = response.getWriter();
        final String ans = new RDBMS_TO_JSON().generateJSON("select * from create_project where emailid='" + emailid + "'");
        out.print(ans);
        System.out.println(ans);
    }
}