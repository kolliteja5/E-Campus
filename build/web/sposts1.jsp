<%-- 
    Document   : sposts1
    Created on : Dec 3, 2016, 6:02:47 PM
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
        String sid=(String)session.getAttribute("sid");
       String profid=request.getParameter("profid");
        String qsn=request.getParameter("qsn");
        
       String reply="noreply";
       
       Connection con=dbconn.getconn();
       
       PreparedStatement pst=con.prepareStatement("insert into qsns(fid,sid,qsn,answer,pdate,rdate) values(?,?,?,?,now(),'still no reply')");
       pst.setString(1, profid);
       pst.setString(2,sid);
        pst.setString(3,qsn);
        pst.setString(4,"not answered");
        pst.executeUpdate();
        response.sendRedirect("spost.jsp");
        
      
        %>
    </body>
</html>
