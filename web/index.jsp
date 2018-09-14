<%-- 
    Document   : index
    Created on : Dec 5, 2016, 6:08:39 PM
    Author     : NEW
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
     java.util.Date date = Calendar.getInstance().getTime();
    SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
                 String dt= sdf.format(date);  
      
       
               Connection con=  dbconn.getconn();
               
               PreparedStatement pst1=con.prepareStatement("select * from log where dt=?");
               pst1.setString(1, dt);
               ResultSet rs1=pst1.executeQuery();
               if(!rs1.next()){
                   
                   
                     PreparedStatement pst2=con.prepareStatement("insert into log(dt,cnt)values(?,?)");
      pst2.setString(1, dt);
      pst2.setInt(2,1);
      pst2.executeUpdate();
      response.sendRedirect("home.jsp");
                   
               }
                             else{
               
                                int cnt=rs1.getInt("cnt");
                                  int sno=rs1.getInt("sno");
               
        PreparedStatement pst3=con.prepareStatement("update log set cnt=? where sno=?");
        pst3.setInt(1, cnt+1);
        pst3.setInt(2, sno);
      pst3.executeUpdate();
      response.sendRedirect("home.jsp");
             }
        %>
    </body>
</html>
