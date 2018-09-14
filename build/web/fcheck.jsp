<%-- 
    Document   : fcheck
    Created on : Nov 24, 2016, 2:05:14 PM
    Author     : NEW
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="databaseconnection.dbconn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        String fid=request.getParameter("fid");
        String fpswrd=request.getParameter("fpswrd");
        Connection con=dbconn.getconn();
        
       PreparedStatement pst=con.prepareStatement("select * from faculty where femail=? and fpswrd=?");
       pst.setString(1,fid);
       pst.setString(2, fpswrd);
     ResultSet rs= pst.executeQuery();
        if(rs.next())
                       {
                session.setAttribute("fname",rs.getString("fname"));
               session.setAttribute("fid",rs.getString("fid"));                          
            response.sendRedirect("fhome.jsp");
           
        }
     else
                 {
         
         response.sendRedirect("home.jsp");
     }
        
        
        
        %>
        
        
    </body>
</html>
