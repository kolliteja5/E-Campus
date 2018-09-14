<%-- 
    Document   : fquestions2
    Created on : Dec 5, 2016, 5:20:40 PM
    Author     : NEW
--%>

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
       String answer=request.getParameter("answer");
        int qsno=Integer.valueOf(request.getParameter("qsno"));
       out.println(answer+"   "+qsno);
        
       
        Connection con=dbconn.getconn();
       
      // PreparedStatement pst=con.prepareStatement("insert into qsns(fid,sid,qsn,answer,pdate,rdate) values(?,?,?,?,now(),'still no reply')");
       PreparedStatement pst=con.prepareStatement("update qsns set answer=? where sno=?");
      
       pst.setString(1,answer);
       pst.setInt(2,qsno);
       pst.executeUpdate();
               
       response.sendRedirect("fquestions.jsp");
        
   
        
        
        
        %>
    </body>
</html>
