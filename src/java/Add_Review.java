import java.io.*;
import java.sql.ResultSet;
import java.util.Collection;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.*;
import vmm.DBLoader;
import javax.servlet.http.HttpSession;
import vmm.sendsms;


public class Add_Review extends HttpServlet 
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
       response.setContentType("text/html");
       
       String rating=request.getParameter("rating");
       String rid=request.getParameter("us");
       String comment=request.getParameter("comment");
       PrintWriter out = response.getWriter();
//       HttpSession session=request.getSession();  
      
       try
       {
          
        // Receive ALL Files  
        //String mobile=(String)session.getAttribute("customermobile");
        
        ResultSet rs=DBLoader.executeQuery("select * from riview");
        if(rs.next()){
        rs.deleteRow();
        rs.moveToInsertRow();
        
        rs.updateString("emailid", rid);
        rs.updateString("rating",rating);
        
        rs.updateString("comment", comment);
       
        rs.insertRow();
        out.print("success");
         }
        else{
            rs.moveToInsertRow();
        
        rs.updateString("emailid", rid);
        rs.updateString("rating",rating);
        
        rs.updateString("comment", comment);
       
        rs.insertRow();
        out.print("success");
        }
       }
     
       catch(Exception ex)
       {
           out.println(ex.getMessage());
       }
    }   

}