import java.io.IOException;
import javax.servlet.ServletException;
import java.io.PrintWriter;
import javax.servlet.http.HttpSession;
import vmm.RDBMS_TO_JSON;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;



public class average_rating extends HttpServlet
{
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
//        final HttpSession session = request.getSession();
        String projectid = request.getParameter("us1");
        response.setContentType("text/html");
         PrintWriter out = response.getWriter();
       String ans = new RDBMS_TO_JSON().generateJSON("select * from riview where emailid='" + projectid + "'");
        out.print(ans);
    }
}