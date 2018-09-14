
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author NEW
 */
@WebServlet("/visiotors")
public class Visitors extends HttpServlet {
    
    public void init(ServletConfig config)
    {
      System.out.println("i am servlet config");  
        
    }
    protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
    {
       PrintWriter pw=res.getWriter();
       pw.println("i am service");
        
    }
    
}
