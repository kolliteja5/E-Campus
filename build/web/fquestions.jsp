<%-- 
    Document   : shome
    Created on : Nov 30, 2016, 5:46:51 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   
  <style>
      
      #id1{
          padding-left:180px;
          background-color: white;
      }
      #id2{
          
         color:green;
           font-size: 25px;
           text-align: right;
           margin-right:84px;
      }
      table{
    
          margin-left: 400px;
          
          margin-top:100px;
          border-style:   groove;
          border-width: 5px;
          border-color:tomato;
        width:50%;
        text-align: center;
          
      }
      tr{
          
          width: 80px;
          height: 60px;
          
      }
      th{
          
        text-align: center;
          color:blue;
      }
      
      </style>
  
    </head>
    <body>
        
         <div class="well" id="id1">
        <img src="banner/student1_1.jpg" width="850" height="250"/>
        
        </div>
         <%
         Object fn=session.getAttribute("fname");
         
         
                %>            
              
      <div class="btn-group btn-group-justified">
    <a href="fhome.jsp" class="btn btn-primary">Home</a>
    <a href="fuploads.jsp" class="btn btn-primary"> Upload </a>
    <a href="fsearch.jsp" class="btn btn-primary"> Search</a>
    
      <a href="fquestions.jsp" class="btn btn-primary"> Questions</a>
     
   <a href="home.jsp" class="btn btn-primary">Logout</a>
 
      </div>

          <p id="id2">Welcome :<%=fn%></p>
        
       
          <div class="row">
              <div class="col-sm-4">
                  <form action="sposts1.jsp">
              <table class="table table-bordered" >
                  <tr>
                      
                      <td colspan="7"><center>View Replys</center></td>
                  </tr>
                  <tr class="success">
                     
                      <th>Sno</td><th>Sid</th><th>Asked For</th><th>Reply</th><th>PostDate</th><th>ReplyDate</th><th>Send Reply</th>
                        
                      
                      
                      
                  </tr>
                  <tr class="danger">
                  
                
                          
                          <%
                          String fid=(String)session.getAttribute("fid");
                        Connection con=  dbconn.getconn();
                          PreparedStatement pst=con.prepareStatement("select * from qsns where fid='"+fid+"'");
                          ResultSet rs=pst.executeQuery();
                          int cnt=0;
                          while(rs.next()){
                             
                             cnt=cnt+1;
                              %>
                              
                              <td><%=cnt%></td> <td><%=rs.getString("sid")%></td> <td><%=rs.getString("qsn")%></td> <td><%=rs.getString("answer")%></td> <td><%=rs.getString("pdate")%></td> <td><%=rs.getString("rdate")%></td><td><a href="fquestions1.jsp?sno=<%=rs.getInt(1)%>">Reply</a>
                              
                              <%
                              
                          }
                                  
                          
                          %>
                          
                          
                          
                    
                      
                      
                  </td>
                  
              </tr>
              
            
              
                  
            
          </table></form>
              </div></div>
          
        
      
    </body>
</html>
