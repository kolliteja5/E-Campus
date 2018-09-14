<%-- 
    Document   : shome
    Created on : Nov 30, 2016, 5:46:51 PM
    Author     : NEW
--%>

<%@page import="databaseconnection.dbconn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
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
        
        
          
         <table border="1" >
              <tr>
                  
                  <th colspan="4"> New Uploads : </th>
                  
              </tr>
              
              <tr>
                 
                  <th>Author</th>
                  <th>Name of the book</th>
                  <th>Description</th>
                  <th>Read Book</th>
                  
                  
              </tr>
              
              
              
              <%
              
            
              Connection con=  dbconn.getconn();
              Statement st=con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                            ResultSet rs= st.executeQuery("select * from uploads");
                                 rs.afterLast();
                                   int cnt=0;
                       while(rs.previous()){
                           
                           
                          
                           String author=rs.getString("author");
                           String  bn=rs.getString("bookname");
                           String des=rs.getString("des");
                           String material=rs.getString("material");
                           
                           
                           %>
                           
                           <tr>
                               
                               <td><%=author%></td>
                               
                               <td><%=bn%></td>
                               <td><%=des%></td>
                            <td><a href="materials/<%=material%>" target="parent"><%=material%></a></td>
                
                               
                               
                           </tr>
                           
                           
                           
                           
                           <%
                           
                           
                           
                           
                           
                           
                       }          
                                 
              
              %>
              
              
              
             
              
              
              
              
          </table>
          
          
          
        
      
    </body>
</html>
