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
         Object sn=session.getAttribute("sname");
         
         
                %>            
              
       <div class="btn-group btn-group-justified">
    <a href="shome.jsp" class="btn btn-primary">Home</a>
    <a href="suploads.jsp" class="btn btn-primary"> Upload </a>
    <a href="ssearch.jsp" class="btn btn-primary"> Search</a>
     <a href="spost.jsp" class="btn btn-primary"> Post Question</a>
      <a href="sviewreplys.jsp" class="btn btn-primary"> Replys</a>
     
   <a href="home.jsp" class="btn btn-primary">Logout</a>
 
      </div>


          <p id="id2">Welcome :<%=sn%></p>
        
       
          <div class="row"><div class="col-sm-1"></div>
              <div class="col-sm-4">
                  <form action="sposts1.jsp">
              <table class="table table-bordered" >
                  <tr>
                      
                      <td colspan="2">Ask Question</td>
                  </tr>
                  <tr>
                  
                  <td> Select Professor: </td>
                  
                  <td>
                      <select name="profid">
                          
                          <%
                          
                        Connection con=  dbconn.getconn();
                          PreparedStatement pst=con.prepareStatement("select * from faculty");
                          ResultSet rs=pst.executeQuery();
                          while(rs.next()){
                              String fid=rs.getString("fid");
                              String fname=rs.getString("fname");
                             
                              %>
                              
                              <option value="<%=fid%>" ><%=fname%>(<%=fid%>)</option>
                              <%
                              
                          }
                                  
                          
                          %>
                          
                          
                          
                      </select>
                      
                      
                  </td>
                  
              </tr>
              
            
              <tr>
                  
                  <td colspan="2">
                      
                      <textarea cols="40" rows="6" name="qsn" placeholder="write question here"></textarea>
                      
                  </td>
                 
                 
                  
                  
              </tr>
              
              <tr>
                  
                  <td colspan="2"><center><input type="submit" value="Ask Question"/></center></td>
              </tr>
              
              
          </table></form>
              </div></div>
          
        
      
    </body>
</html>
