<%-- 
    Document   : accept
    Created on : Dec 3, 2016, 6:45:08 PM
    Author     : NEW
--%>

<%@page import="databaseconnection.dbconn"%>
<%@page import="java.sql.PreparedStatement"%>
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
        
       int sno= Integer.valueOf(request.getParameter("sno"));
        
         Connection con= dbconn.getconn();
          
        PreparedStatement pst=con.prepareStatement("update uploads set status=0 where sno="+sno+"");
           pst.executeUpdate();       
response.sendRedirect("chkuploads.jsp");
%>
        
        
        
    </body>
</html>
