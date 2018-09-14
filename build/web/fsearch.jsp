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
          <br><br>
          <div class="row">
              
              
              <div class="col-sm-3"></div>
              <div class="col-sm-4">
                  <form action="fsearch1.jsp">
                      
                      
                  
          <table class="table table-bordered">
                            <tr>
                  
                  <th colspan="2"> <center> Search Material :</center> </th>
                  
              </tr>
              
              
              <tr >
                  <td>Search By </td><td><select name="searchby" id="select1">
                          
                          <option name="author">Author</option>
                          <option name="bookname">BookName</option>
                         
                      </select></td>
                  
              </tr>
              
            
              <tr class="hide1">
                  
                  <td><label>Enter</label> <label id="in1"></label></td>
                  <td><input type="text" name="given"/></td>
                  
              </tr >
              
              <tr class="hide1">
                  
                 
                  <th colspan="2"><center><input type="submit" value="Search"/></center></td>
                  
                  
                  
                  
              </tr>
                  
              
             
              
              
              
          </table>
              </form>
              </div>
          </div>
        
          
          
        
          
          <table class="table table-bordered">
          
              <tr class="danger"><th>Sno</th><th>Author</th><th>Title</th><th>Description</th><th>View</th></tr>
          <%
          int cnt=0;
         Connection con= dbconn.getconn();
          
        PreparedStatement pst=con.prepareStatement("select * from uploads where status=1");
         ResultSet rs=pst.executeQuery();
         while(rs.next())
                         {
             
             cnt=cnt+1;
             %>
             
    <tr class="success">
        <td><%=cnt%></td>
        <td><%=rs.getString("author")%></td>
        <td><%=rs.getString("bookname")%></td>
        <td><%=rs.getString("des")%> </td>
        <td><a href="materials/<%=rs.getString("material")%>" target="parent"><%=rs.getString("material")%></a></td>
    </tr>
             
             
             <%
             
             
             
         }
         
          
          %>
          
          
          
          
          
          
          
          
          
          
          
      
    </body>
    
    <script>
        
        $(document).ready(function(){
            $('.hide1').hide();
              $('#select1').change(function(){
                    $('.hide1').show();       
                var v= $(this).val();
                 // alert(v);
                  document.getElementById("in1").innerHTML =v;
              })
            
            
            
        })
        
</script>    
</html>
