<%-- 
    Document   : adminhome
    Created on : Nov 26, 2016, 10:48:44 AM
    Author     : NEW
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="databaseconnection.dbconn"%>
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
    <a href="noofvisitors.jsp" class="btn btn-primary">Visitors</a>
   <a href="home.jsp" class="btn btn-primary">Logout</a>
 
      </div>

        <br><br><br>
        <div class="row">
            
            <div class="col-sm-3"></div>
            <div class="col-sm-4">
        <table class="table table-bordered">
            
            <tr class="danger">
                <th>Sno</th><th>Date</th><th>Visitors</th>
            </tr>
            <%
            
            Connection con=dbconn.getconn();
            PreparedStatement pst=con.prepareStatement("select * from log");
            int cnt=0;
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                cnt=cnt+1;
                %>
                
                <tr class="success"> 
                    
                    <td><%=cnt%></td>

                    <td><%=rs.getString("dt")%></td>
                    <td><%=rs.getInt("cnt")%></td>
                    
                </tr>    
            <%
                       }
            %>
                    
            
       
        
        </table>
            </div>
        </div>
        
        
    </body>
</html>
