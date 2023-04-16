import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import vmm.RDBMS_TO_JSON;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import vmm.DBLoader;
import vmm.RDBMS_TO_JSON;


public class freelancer_search_framework extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
                                                            throws ServletException, IOException 
    {
           response.setContentType("text/html");
        
        // Step 2
        PrintWriter out = response.getWriter();
        
       
            try
            {
//                String username = request.getParameter("plKeyword");
             
//                System.out.println("pl"+username);
                

          
                
               
                 HttpSession session = request.getSession();

        String ans = new RDBMS_TO_JSON().generateJSON("select * from create_project" );
        
//        where restaurant_id1='"+id+"'"
        out.print(ans);
         }
            catch(Exception ex)
            {
                ex.printStackTrace();
            }
        
    }
}