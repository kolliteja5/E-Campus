<%-- 
    Document   : shome
    Created on : Nov 30, 2016, 5:46:51 PM
    Author     : NEW
--%>

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
     <a href="spost.jsp" class="btn btn-primary"> Post Question</a>
      <a href="sviewreplys.jsp" class="btn btn-primary"> Replys</a>
     
   <a href="home.jsp" class="btn btn-primary">Logout</a>
 
      </div>


          <p id="id2">Welcome :<%=sn%></p>
          <br><br>
          <div class="row">
              
              
              <div class="col-sm-3"></div>
              <div class="col-sm-4">
                  <form action="suploads1.jsp">
          <table class="table table-bordered">
              <tr>
                  
                  <th colspan="2"> <center> Upload Material :</center> </th>
                  
              </tr>
              
              
              <tr>
                  <td>Author</td><td><input type="text" name="authname"/></td>
                  
              </tr>
              <tr>
                  <td>Name of the book</td><td><input type="text" name="bname"/></td>
              </tr>
              <tr>
                  <td>Description</td> <td><textarea cols="26" rows="4" name="bdesc"> </textarea></td>
                  
                  
              </tr>
              <tr>
                  
                  <td>Browse Material:</td><td><input type="file" name="mat"/></td>
                  </tr>
              <tr>
                  <th colspan="2">              <center>
<input type="submit" value="Upload"/>              </center>
</th>
                  
              </tr>
              
              
              
              
          </table>
              </form>
              </div>
          </div>
        
      
    </body>
</html>
