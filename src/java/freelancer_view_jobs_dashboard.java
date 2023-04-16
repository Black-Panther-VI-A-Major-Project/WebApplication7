import java.io.*;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import javax.servlet.*;
import javax.servlet.http.*;
import vmm.DBLoader;
import vmm.RDBMS_TO_JSON;


public class freelancer_view_jobs_dashboard extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
                                                            throws ServletException, IOException 
    {
      try{
              
                 String timeStamp = new SimpleDateFormat("yyyy.MM.dd.HH.mm.ss").format(new java.util.Date());
             HttpSession session = request.getSession();
              ResultSet rsAudit = DBLoader.executeQuery("select * from audit_users");
              //  String emailid=    (session.getAttribute("freelancerEmail")).toString();
//        int id=Integer.parseInt(request.getParameter("id"));
        // Step 1
        response.setContentType("text/html");
       // String emailid=session.getAttribute(("freelancerEmail").toString());
        //Step 2
        PrintWriter out = response.getWriter();
        
        String ans = new RDBMS_TO_JSON().generateJSON("select * from create_project");
        
//        where restaurant_id1='"+id+"'"
rsAudit.moveToInsertRow();
                       
          
             rsAudit.updateString("emailid",(session.getAttribute("freelancerEmail")).toString());
            rsAudit.updateString("action","Freelancer Search");
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
