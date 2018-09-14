<%-- 
    Document   : index
    Created on : Mar 3, 2016, 1:04:29 PM
    Author     : NEW
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
 
  <style>
      .jumbotron { min-height: 10px; }
      </style>
      <style>
          #simg{
              
              background-image: url("banner/bok1.jpeg");
                background-repeat: no-repeat;  
                background-size: 100% auto;
                
          }
          
          
      </style>
</head>


 

    <body >
        
        <div class="container-fluid">
            <div class="jumbotron">
                <img alt="" src="front/elr.png">
              <div class="col-md-8">
    
    
     
  </div>
                <div class="col-sm-3"></div>
                <div class="col-md-1">
                    <a href="home.jsp" class="btn btn-info" role="button" class="">Home</a>
  
                </div>
                
                
            </div>
            
            
        </div>
        
       
        <div id="simg"> 
    <center><h3><b>Create Your Account</b></h3></center><br>
    <div class="row">
        <div class="col-sm-4"></div>
        <div class="col-sm-8">
            <b><font size="4"> I am  a :&nbsp;&nbsp;</font></b><select id="chk">
        <option value="faculty">Faculty</option>
        <option value="student">Student</option>
   
        
    </select></div>
    </div>
        
    <div class="row">
        
        <div class="col-sm-1"></div>
       
        <div class="col-sm-1"><br><br><br><br></div>
        
        
        
        <!-- doctor -->
        <div id="faculty" class="col-sm-4"><br><br><br><br>
        
            <div class="jumbotron1">
      
                <form action="fsignup1.jsp" onsubmit="return fcheck()" >
                
                <table class="table">
                    <tr>
                        <th colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font color="green">Faculty Signup</font></th>
                        
                    </tr>
                    <tr>
                        <td></td><td>
                        <div id="txtHint"><font color="red"></font></div></td>
                    </tr>
                     <tr><td>
                            <b>Enter Faculty Id:</b></td><td><input type="text" id="fid" name="fid"/></td>
                    </tr>
                    
                    <tr><td>
                            <b>Enter Faculty Name:</b></td><td><input type="text" id="fn" name="fn"/></td>
                    </tr>
                    
                   
                    
                    
                   
                    
                    
                    
                  
                     <tr><td>
                            <b>Enter Email:</b></td><td><input type="email" id="femail" name="femail" placeholder="xxxxxxx@gmail.com"onchange="showCustomer(this.value)"/></td> 
                    </tr>
                     <tr><td>
                            <b>Select Department :</b></td><td>
                             
                             <select name="fdept">
                                 <option value="cse">CSE</option>
                                 <option value="it">IT</option>
                                 <option value="eee">EEE</option>
                                
                             </select>
                             
                         </td>
                    </tr>
                    
                      <tr><td>
                            <b>Enter Password:</b></td><td><input type="password" id="fpswrd1" name="fpswrd1"/></td>
                    </tr>
                    
                    
                    
                     <tr><td>
                            <b>Confirm Password:</b></td><td><input type="password" id="fpswrd2" name="fpswrd2"/></td>
                    </tr>
                    
                    
                   
                     <tr><td>
                            <b>Select Gender :</b></td><td>
                             Male:<input type="radio" value="Male" name="gen"/> Female:<input type="radio" value="Female" name="gen"/>
                             
                             
                         </td>
                    </tr>
                    
                    
                     <tr><td>
                            <b>Mobile Phone :</b></td><td>
                             
                             
                             <input type="text" name="fmob" max="10" min="10" id="fmob"/>
                             
                         </td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td>
                            
                             
                             
                             <input type="submit" value="Signup"/>
                             
                </td>
                    </tr>
                </table>
                
                
            </form>
            
            
            </div>
        </div>
        
        
        
        <div class="col-sm-4"></div>
        
        
      <!-- student --> 
      
        <div id="student" class="col-sm-4"><br><br><br><br>
        
            <div class="jumbotron1">
      
                <form action="ssignup1.jsp" onsubmit="return sCheck()" >
                
                <table class="table">
                    <tr>
                        <th colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <font color="green">Student Account</font></th>
                        
                    </tr>
                    <tr>
                        <td></td><td>
                        <div id="txtHint"><font color="red"></font></div></td>
                    </tr>
                    
                    
                    <tr><td>
                            <b>Student Regno :</b></td><td><input type="text" id="sregno" name="sid" required/></td>
                    </tr>
                    
                    <tr><td>
                            <b>Student Name:</b></td><td><input type="text" id="sn" name="sn" required/></td>
                    </tr>
                    
                    <tr><td>
                            <b>Student Email:</b></td><td><input type="email" id="semail" name="semail" placeholder="xxxxxxx@gmail.com"onchange="showCustomer(this.value)"/></td> 
                    </tr>
                    
                    
                     <tr><td>
                            <b>Create Password:</b></td><td><input type="password" id="spswrd1" name="spswrd1"/></td>
                    </tr>
                    
                    
                     <tr><td>
                            <b>Confirm Password:</b></td><td><input type="password" id="spswrd2" name="spswrd2"/></td>
                    </tr>
                    
                    
                     <tr><td>
                            <b>Select Department :</b></td>
                         <td>
                             
                             <select name="sdept">
                                 <option value="cse">CSE</option>
                                 <option value="it">IT</option>
                                 <option value="eee">EEE</option>
                                
                             </select>
                             
                         </td>
                    </tr>
                    
                      <tr><td>
                            <b>Select Gender :</b></td><td>
                             Male:<input type="radio" value="Male" name="sgen"/> Female:<input type="radio"  value="Female" name="sgen"/>
                             
                             
                         </td>
                    </tr>
                    
                    
                    
                    
                     <tr><td>
                            <b>Mobile Phone :</b></td><td>
                             
                             
                             <input type="text" name="smob" max="10" min="10" id="smob"/>
                             
                         </td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td>
                            
                             
                             
                             <input type="submit" value="Signup"/>
                             
                </td>
                    </tr>
                </table>
                
                
            </form>
            
            
            </div>
        </div>
      
      
        
      
      
      
      
      
     
        
        
        
        
        
        
        
        
        
    </div>
    
    
    
        </div>
        
        
        
    </body>
        
        
        <script>
     
function showCustomer(str) {

 
  var xhttp;
  if (str == "") {
    document.getElementById("txtHint").innerHTML = "";
    return;
  }
  xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (xhttp.readyState == 4 && xhttp.status == 200) {
      document.getElementById("txtHint").innerHTML = xhttp.responseText;
    
    }
  };
  xhttp.open("GET", "signupcheck.jsp?q="+str, true);
  xhttp.send();
}
</script>


<script>
    
 function fCheck(){
        
        
        
        
        
          var fid=document.getElementById("fid").value;
         
          var fn=document.getElementById("fn").value;
         
           var femail=document.getElementById("femail").value;
           var fpswrd1=document.getElementById("fpswrd1").value;
           var fpswrd2=document.getElementById("fpswrd2").value;
           
           var fmob=document.getElementById("fmob").value;
           var fmob1=mob.length;
           
         if(fn.length<6){
             
             alert('Name must be 6 chars');
             return false;
         }
         if(fpswrd1<6||fpswrd2<6){
             
             alert('password must be >6 chars');
             return false;
         }
         if(fpswrd1!=fpswrd2){
             alert('password and confirm password must match');
             return false;
         }
           
          if(isNaN(fmob)){
              alert('Mobile number should contain only digits');
              return false;
              
          }
           if(fmob1<10||fmob1>10){
               alert('Mobile number should be 10 digits');
               return false;
           }
         
  
    
         
            
         
         
    
    }
    
    function sCheck(){
        
        
        
        
          var sregno=document.getElementById("sregno").value;
         
        
          var sn=document.getElementById("sn").value;
         
           var semail=document.getElementById("semail").value;
           var spswrd1=document.getElementById("spswrd1").value;
           var spswrd2=document.getElementById("spswrd2").value;
           var smob=document.getElementById("smob").value;
          
           var smob1=smob.length;
           
        
           
         if(sn.length<6){
             
             alert('Name must be 6 chars');
             return false;
         }
         if(spswrd1<6||spswrd2<6){
             
             alert('password must be >6 chars');
             return false;
         }
         if(spswrd1!=spswrd2){
             alert('password and confirm password must match');
             return false;
         }
           
          if(isNaN(smob)){
              alert('Mobile number should contain only digits');
              return false;
              
          }
           if(smob1<10||smob1>10){
               alert('Mobile number should be 10 digits');
               return false;
           }
         
  
   
         
      
         
            
         
         
    
    }
    
    function check(){
        
        
        
        
        
          var un=document.getElementById("un").value;
         
           var email=document.getElementById("email").value;
           var pswrd1=document.getElementById("pswrd1").value;
           var pswrd2=document.getElementById("pswrd2").value;
           var mob=document.getElementById("mob").value;
           var mob1=mob.length;
           
         if(un.length<6){
             
             alert('Username must be 6 chars');
             return false;
         }
         if(pswrd1<6||pswrd2<6){
             
             alert('password must be >6 chars');
             return false;
         }
         if(pswrd1!=pswrd2){
             alert('password and confirm password must match');
             return false;
         }
           
          if(isNaN(mob)){
              alert('Mobile number should contain only digits');
              return false;
              
          }
           if(mob1<10||mob1>10){
               alert('Mobile number should be 10 digits');
               return false;
           }
         
  
    var v=document.getElementById("txtHint").innerText;
 if(v.length<1)
     {
          return true;
         
     }
     else
         {
            
             return false;
         }
         
         
         
      
         
            
         
         
    
    }
    </script>


    <script>
        
        $(document).ready(function(){
         
               $('#student').hide();
               $('#faculty').show();
           $('#chk').change(function(){
                $('#faculty').hide();
               $('#student').hide();
              var v= $(this).val();
              $('#'+v).show(1000);
               
               
           })
        
          
          
          
      })
        
        </script>
            
            
            
    
</html>