<%-- 
    Document   : ssearch2
    Created on : Dec 3, 2016, 4:45:00 PM
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
        
       String searchby= request.getParameter("searchby");
       String given=request.getParameter("given");
       
       String part1=searchby+"="+given;
       
        String part2="select * from uploads where ";
        String part=part2+part1;
        
        System.out.println(part);
        
        %>
        
        
        
        
        
    </body>
</html>
