import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import vmm.RDBMS_TO_JSON;


public class view_freelacer_jobs1 extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
                                                            throws ServletException, IOException 
    {
      
                 HttpSession session = request.getSession();
              
                String emailid=    (session.getAttribute("freelancerEmail")).toString();
//        int id=Integer.parseInt(request.getParameter("id"));
        // Step 1
        response.setContentType("text/html");
       // String emailid=session.getAttribute(("freelancerEmail").toString());
        //Step 2
        PrintWriter out = response.getWriter();
        
        String ans = new RDBMS_TO_JSON().generateJSON("select * from freelancer_profile where emailid='"+emailid+"'");
        
//        where restaurant_id1='"+id+"'"
        out.print(ans);
        
    }
}
