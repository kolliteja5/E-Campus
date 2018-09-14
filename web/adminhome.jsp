<%-- 
    Document   : adminhome
    Created on : Nov 26, 2016, 10:48:44 AM
    Author     : NEW
--%>

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

        
        
    </body>
</html>
