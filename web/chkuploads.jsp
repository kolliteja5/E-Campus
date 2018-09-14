<%-- 
    Document   : adminhome
    Created on : Nov 26, 2016, 10:48:44 AM
    Author     : NEW
--%>

<%@page import="databaseconnection.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
        <style>
        
        #id1{
            padding-left:250px;
      background-color: white;
        }
        </style>
       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="well" id="id1">
        <img src="banner/admin.jpg" width="850" height="250"/>
        
        </div>
        
        
      <div class="btn-group btn-group-justified">
    <a href="adminhome.jsp" class="btn btn-primary">Home</a>
    <a href="chkuploads.jsp" class="btn btn-primary">Check Uploads </a>
    
   <a href="home.jsp" class="btn btn-primary">Logout</a>
 
      </div>
        <br><br><br>
        
          <table class="table table-bordered">
          
              <tr class="danger"><th>Sno</th><th>Role</th><th>Author</th><th>Title</th><th>Description</th><th>View</th><th>Status</th></tr>
          <%
          int cnt=0;
         Connection con= dbconn.getconn();
          
        PreparedStatement pst=con.prepareStatement("select * from uploads");
         ResultSet rs=pst.executeQuery();
         while(rs.next())
                         {
             int sno=rs.getInt("sno");
             int status=rs.getInt("status");
             
             cnt=cnt+1;
             %>
             
    <tr class="success">
        <td><%=cnt%></td>
        <td><%=rs.getString("type")%></td>
        <td><%=rs.getString("author")%></td>
        <td><%=rs.getString("bookname")%></td>
        <td><%=rs.getString("des")%> </td>
        <td><a href="materials/<%=rs.getString("material")%>" target="parent"><%=rs.getString("material")%></a></td>
        <%
        
        if(status==1){
            
            %>
            <td> <a href="reject.jsp?sno=<%=sno%>">Click to reject</a></td>
          
            <%
        }else
                       {
                 
                 %>
                 <td> <a href="accept.jsp?sno=<%=sno%>">Click to Accept</a></td>
                 
                 <%
                 
        }
        
    %>
    </tr>
             
             
             <%
             
             
             
         }
         
          
          %>
          
          
          
          
          
          
          
          
        
        
        
        
    </body>
</html>
