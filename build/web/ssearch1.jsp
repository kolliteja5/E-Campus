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
         Object sn=session.getAttribute("sname");
         
         
                %>            
              
      <div class="btn-group btn-group-justified">
    <a href="shome.jsp" class="btn btn-primary">Home</a>
    <a href="suploads.jsp" class="btn btn-primary"> Upload </a>
    <a href="ssearch.jsp" class="btn btn-primary"> Search</a>
   <a href="home.jsp" class="btn btn-primary">Logout</a>
 
      </div>

          <p id="id2">Welcome :<%=sn%></p>
          <br><br>
          <div class="row">
              
              
              <div class="col-sm-3"></div>
              <div class="col-sm-4">
                  <form action="ssearch1.jsp">
                      
                      
                  
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
        
          
          <%
           String searchby=null;
           String given=null;
           searchby= request.getParameter("searchby");
       given=request.getParameter("given");
                   
          %>
        
          
          <table class="table table-bordered">
              <tr class="danger"><td colspan="5" ><center><h3><%=searchby%>   <%=given%></h3> </center></td></tr>
              <tr class="danger"><th>Sno</th><th>Author</th><th>Title</th><th>Description</th><th>View</th></tr>
          <%
          int cnt=0;
          
        
       
       String part1=searchby+"="+"'"+given+"'";
       
        String part2="select * from uploads where ";
        String part3=" and status=1";
        String part=part2+part1+part3;
        
        System.out.println(part);
          
          
          
         Connection con= dbconn.getconn();
          
        PreparedStatement pst=con.prepareStatement(part);
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
          
          
</table>
          
          <br><br><br>
          
          
          
          
          
          
          
          
      
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
