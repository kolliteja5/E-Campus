<%-- 
    Document   : suploads1
    Created on : Dec 3, 2016, 1:24:20 PM
    Author     : NEW
--%>

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
        
        String authname= request.getParameter("authname");
        String bname=request.getParameter("bname");
        String bdesc=request.getParameter("bdesc");
        String type="student";
        String material=request.getParameter("mat");
        Connection con=dbconn.getconn();
        
        PreparedStatement pst=con.prepareStatement("insert into uploads(author,bookname,des,type,material,status) values(?,?,?,?,?,0)");
        
        pst.setString(1, authname);
        pst.setString(2, bname);
        pst.setString(3,bdesc);
        pst.setString(4, type);
        pst.setString(5,material);
        
      
        
        
        
        pst.executeUpdate();
        response.sendRedirect("suploads.jsp?msg=success");
        
        
        %>
    </body>
</html>
