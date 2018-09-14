<%-- 
    Document   : acheck
    Created on : Nov 24, 2016, 12:58:28 PM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        String aid=request.getParameter("aid");
        String apswrd=request.getParameter("apswrd");
        
        if(aid.equals("admin@gmail.com")&&apswrd.contains("admin")){
            response.sendRedirect("adminhome.jsp");
        }
        else
                       {
          response.sendRedirect("home.jsp");
        }
        %>
    </body>
</html>
