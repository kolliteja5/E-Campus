<%-- 
    Document   : scheck
    Created on : Nov 30, 2016, 5:40:51 PM
    Author     : NEW
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="databaseconnection.dbconn"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
                 String sid=request.getParameter("sid");
                 String spswrd=request.getParameter("spswrd");
         Connection con=dbconn.getconn();
        
       PreparedStatement pst=con.prepareStatement("select * from student where semail=? and spswrd=?");
       pst.setString(1,sid);
       pst.setString(2, spswrd);
       ResultSet rs= pst.executeQuery();
        if(rs.next())
                       {
            session.setAttribute("type","student");
                session.setAttribute("sname",rs.getString("sname"));
               session.setAttribute("sid",rs.getString("sid"));   
                  session.setAttribute("sdept",rs.getString("sdept"));
                                                                    
            response.sendRedirect("shome.jsp");
           
        }
     else
                 {
         
         response.sendRedirect("home.jsp");
     }
        
        
        %>
    </body>
</html>
