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
        
        try{
                     String sid= request.getParameter("sid");
                    String sname= request.getParameter("sn");
        
         String semail= request.getParameter("semail");
          String spswrd1= request.getParameter("spswrd1");
           String sgen= request.getParameter("sgen");
            String smob= request.getParameter("smob");
            String sdept=request.getParameter("sdept");
            
            
          Connection con= dbconn.getconn();
       PreparedStatement pst=con.prepareStatement("insert into student(sid,sname,semail,sdept,spswrd,gen,smob)values(?,?,?,?,?,?,?)");
          pst.setString(1, sid);
          pst.setString(2, sname);
          pst.setString(3, semail);
          pst.setString(4, sdept);
          pst.setString(5, spswrd1);
          pst.setString(6,sgen);
          pst.setString(7, smob);
          
         int i= pst.executeUpdate();
            
            response.sendRedirect("home.jsp");
                       }
        catch(Exception e){
          e.printStackTrace();
        }
        %>
    </body>
</html>
