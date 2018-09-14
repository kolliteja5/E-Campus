package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import databaseconnection.dbconn;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.ResultSet;
import java.sql.Connection;

public final class fhome_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("   \n");
      out.write("  <style>\n");
      out.write("      \n");
      out.write("      #id1{\n");
      out.write("          padding-left:180px;\n");
      out.write("          background-color: white;\n");
      out.write("      }\n");
      out.write("      #id2{\n");
      out.write("          \n");
      out.write("         color:green;\n");
      out.write("           font-size: 25px;\n");
      out.write("           text-align: right;\n");
      out.write("           margin-right:84px;\n");
      out.write("      }\n");
      out.write("      table{\n");
      out.write("    \n");
      out.write("          margin-left: 400px;\n");
      out.write("          \n");
      out.write("          margin-top:100px;\n");
      out.write("          border-style:   groove;\n");
      out.write("          border-width: 5px;\n");
      out.write("          border-color:tomato;\n");
      out.write("        width:50%;\n");
      out.write("        text-align: center;\n");
      out.write("          \n");
      out.write("      }\n");
      out.write("      tr{\n");
      out.write("          \n");
      out.write("          width: 80px;\n");
      out.write("          height: 60px;\n");
      out.write("          \n");
      out.write("      }\n");
      out.write("      th{\n");
      out.write("          \n");
      out.write("        text-align: center;\n");
      out.write("          color:blue;\n");
      out.write("      }\n");
      out.write("      \n");
      out.write("      </style>\n");
      out.write("  \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("         <div class=\"well\" id=\"id1\">\n");
      out.write("        <img src=\"banner/student1_1.jpg\" width=\"850\" height=\"250\"/>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("         ");

         Object fn=session.getAttribute("fname");
         
         
                
      out.write("            \n");
      out.write("              \n");
      out.write("      <div class=\"btn-group btn-group-justified\">\n");
      out.write("    <a href=\"fhome.jsp\" class=\"btn btn-primary\">Home</a>\n");
      out.write("    <a href=\"fuploads.jsp\" class=\"btn btn-primary\"> Upload </a>\n");
      out.write("    <a href=\"fsearch.jsp\" class=\"btn btn-primary\"> Search</a>\n");
      out.write("    \n");
      out.write("      <a href=\"fquestions.jsp\" class=\"btn btn-primary\"> Questions</a>\n");
      out.write("     \n");
      out.write("   <a href=\"home.jsp\" class=\"btn btn-primary\">Logout</a>\n");
      out.write(" \n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("          <p id=\"id2\">Welcome :");
      out.print(fn);
      out.write("</p>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("          \n");
      out.write("         <table border=\"1\" >\n");
      out.write("              <tr>\n");
      out.write("                  \n");
      out.write("                  <th colspan=\"4\"> New Uploads : </th>\n");
      out.write("                  \n");
      out.write("              </tr>\n");
      out.write("              \n");
      out.write("              <tr>\n");
      out.write("                 \n");
      out.write("                  <th>Author</th>\n");
      out.write("                  <th>Name of the book</th>\n");
      out.write("                  <th>Description</th>\n");
      out.write("                  <th>Read Book</th>\n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("              </tr>\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              ");

              
            
              Connection con=  dbconn.getconn();
              Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                            ResultSet rs= st.executeQuery("select * from uploads");
                                 rs.afterLast();
                                   int cnt=0;
                       while(rs.previous()){
                           
                           
                          
                           String author=rs.getString("author");
                           String  bn=rs.getString("bookname");
                           String des=rs.getString("des");
                           String material=rs.getString("material");
                           
                           
                           
      out.write("\n");
      out.write("                           \n");
      out.write("                           <tr>\n");
      out.write("                               \n");
      out.write("                               <td>");
      out.print(author);
      out.write("</td>\n");
      out.write("                               \n");
      out.write("                               <td>");
      out.print(bn);
      out.write("</td>\n");
      out.write("                               <td>");
      out.print(des);
      out.write("</td>\n");
      out.write("                            <td><a href=\"materials/");
      out.print(material);
      out.write("\" target=\"parent\">");
      out.print(material);
      out.write("</a></td>\n");
      out.write("                \n");
      out.write("                               \n");
      out.write("                               \n");
      out.write("                           </tr>\n");
      out.write("                           \n");
      out.write("                           \n");
      out.write("                           \n");
      out.write("                           \n");
      out.write("                           ");

                           
                           
                           
                           
                           
                           
                       }          
                                 
              
              
      out.write("\n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("             \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("              \n");
      out.write("          </table>\n");
      out.write("          \n");
      out.write("          \n");
      out.write("          \n");
      out.write("        \n");
      out.write("      \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
