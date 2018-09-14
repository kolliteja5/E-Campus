<%-- 
    Document   : fsignup1
    Created on : Nov 24, 2016, 10:35:16 AM
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
                     String fid= request.getParameter("fid");
                    String fname= request.getParameter("fn");
        
         String femail= request.getParameter("femail");
          String fpswrd1= request.getParameter("fpswrd1");
           String gen= request.getParameter("gen");
            String fmob= request.getParameter("fmob");
            String fdept=request.getParameter("fdept");
          Connection con= dbconn.getconn();
       PreparedStatement pst=con.prepareStatement("insert into faculty(fid,fname,femail,fdept,fpswrd,gen,fmob)values(?,?,?,?,?,?,?)");
          pst.setString(1, fid);
          pst.setString(2, fname);
          pst.setString(3, femail);
          pst.setString(4, fdept);
          pst.setString(5, fpswrd1);
          pst.setString(6,gen);
          pst.setString(7, fmob);
          
         int i= pst.executeUpdate();
            
            response.sendRedirect("home.jsp");
            
        %>
    </body>
</html>
