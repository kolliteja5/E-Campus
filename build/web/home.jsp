<!DOCTYPE html>
<html lang="en">
<head>
<title>Elearn</title>
<meta charset="utf-8">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/responsive.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/touchTouch.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/kwicks-slider.css" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
<script src="js/jquery.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.flexslider-min.js"></script>
<script src="js/jquery.kwicks-1.5.1.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.cookie.js"></script>
<script src="js/touchTouch.jquery.js"></script>

 <link href="2/thumbnail-slider.css" rel="stylesheet" type="text/css" />
    <script src="2/thumbnail-slider.js" type="text/javascript"></script>

<style>
    a:hover {
    background-color: blue;
}
    
</style>
<script>
if ($(window).width() > 1024) {
    document.write("<" + "script src='js/jquery.preloader.js'></" + "script>");
}
</script>
<script>
jQuery(window).load(function () {
    $x = $(window).width();
    if ($x > 1024) {
        jQuery("#content .row").preloader();
    }
    jQuery('.magnifier').touchTouch();
    jQuery('.spinner').animate({
        'opacity': 0
    }, 1000, 'easeOutCubic', function () {
        jQuery(this).css('display', 'none')
    });
});
</script>
<!--<![endif]-->
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<link rel="stylesheet" href="css/docs.css" type="text/css" media="screen">
<link rel="stylesheet" href="css/ie.css" type="text/css" media="screen">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400' rel='stylesheet' type='text/css'>
<![endif]-->
</head>
<body>
   
<center>  <h1 class="brand brand_" class="text-left">
              <a href=""><img src="front/elr.png"/></a>
                  </h1></center>
<div class="spinner"></div>
<header>
  <div class="container clearfix">
    <div class="row">
      <div class="span12">
        <div class="navbar navbar_">
          <div class="container">
       
          
            <a class="btn btn-navbar btn-navbar_" data-toggle="collapse" data-target=".nav-collapse_">Menu <span class="icon-bar"></span> </a>
            <div class="nav-collapse nav-collapse_  collapse">
               <ul class="nav sf-menu">
                
                <li class="active"><a href="home.jsp">Home</a></li>
                <li><a href="#" id="adm">Admin</a>
                 
                </li>
                <li><a href="#" id="fac">Faculty</a></li>
                <li><a href="#" id="stu">Student</a></li>
                <li><a href="signup.jsp">Signup</a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>


<!-- admin -->

      <center>
      <div class="alogin">
          <br><br>
    <form action="acheck.jsp" >
    
        <table>
            <tr>
                
                <th colspan="2"> <h3 class="blinking"> <font color="red"><b>Admin Login</b></font></h3></th>
            </tr>
            <tr>
                <td>Enter Id</td>
                <td><input type="text" name="aid"/>
                    
                
            </tr>
            <tr>
                
                <td>Enter Password</td>
                <td><input type="password" name="apswrd"/>
            </tr>
            <tr>
                
                <th ><input type="submit" value="Login"/></td>
            
            </tr>
            
            
        </table>
        
   </form>
    
</div>
  
              </center>   
         
     
 <!--faculty login-->
 
 
 
  <center>
      <div class="flogin">
          <br><br>
    <form action="fcheck.jsp" >
    
        <table>
            <tr>
                
                <th colspan="2"> <h3 class="blinking"> <font color="red"><b>Faculty Login</b></font></h3></th>
            </tr>
            <tr>
                <td>Enter Id</td>
                <td><input type="text" name="fid"/>
                    
                
            </tr>
            <tr>
                
                <td>Enter Password</td>
                <td><input type="password" name="fpswrd"/>
            </tr>
            <tr>
                
                <th ><input type="submit" value="Login"/></td>
            
            </tr>
            
            
        </table>
        
   </form>
    
</div>
  
              </center>   
         
 <!--faculty login close -->
 
 
 <!--student login -->
 
 
  <center>
      <div class="slogin">
          <br><br>
    <form action="scheck.jsp" >
    
        <table>
            <tr>
                
                <th colspan="2"> <h3 class="blinking"> <font color="red"><b>Student Login</b></font></h3></th>
            </tr>
            <tr>
                <td>Enter Id</td>
                <td><input type="text" name="sid"/>
                    
                
            </tr>
            <tr>
                
                <td>Enter Password</td>
                <td><input type="password" name="spswrd"/>
            </tr>
            <tr>
                
                <th ><input type="submit"  value="Login"/></td>
            
            </tr>
            
            
        </table>
        
   </form>
    
</div>
  
              </center>   
         
 
 <!-- student login close -->
 
 
 
 
 
 
 
    <div style="padding:12px 0;">
        <div id="thumbnail-slider">
            <div class="inner">
                <ul>
                    <li>
                        <a class="thumb" href="front/1.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="front/2.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="front/3.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="front/4.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="front/6.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="front/7.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="front/8.png"></a>
                    </li>
                    <li>
                        <a class="thumb" href="front/9.jpg"></a>
                    </li>
                    <li>
                        <a class="thumb" href="front/10.jpg"></a>
                    </li>
                   
                </ul>
            </div>
        </div>
    </div>
    <!--end-->






<script src="js/bootstrap.js"></script>

    <script>
function blinker() {
	$('.blinking').fadeOut(500);
	$('.blinking').fadeIn(500);
}
setInterval(blinker, 1000);
</script>

<script>
    
    $(document).ready(function(){
             
         $('.alogin').hide();
        $('.flogin').hide();
        $('.slogin').hide();
        
        $('a').click(function(){
            
 
            
            var id = $(this).attr('id');
          
          if(id=='fac'){
              
               $('.alogin').hide();
        $('.flogin').show();
        $('.slogin').hide();
          }
          
           if(id=='stu'){
              
               $('.alogin').hide();
        $('.flogin').hide();
        $('.slogin').show();
          }
          
           if(id=='adm'){
              
               $('.alogin').show();
        $('.flogin').hide();
        $('.slogin').hide();
          }
          
          
          
          
        })
        
    })
    
    
    
    </script>

<script src="js/bootstrap.js"></script>
</body>
</html>