<%-- 
    Document   : register
    Created on : Apr 6, 2019, 12:54:02 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>BookmyBus SignUp Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom Theme files -->
        <link href="style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //Custom Theme files -->
        <!-- web font -->
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <!-- //web font -->
    </head>
    <body>
        <div class="main-w3layouts wrapper">
            <h1>BookmyBus</h1>
            <h2>

            </h2>
            <h2>Register to access all our services</h2>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <form action="register" method="post">
                        <input class="text" type="text" name="username" placeholder="Username" required="">
                        <input class="text email" type="email" name="email" placeholder="Email" required="">
                        <input class="text" type="password" name="password" placeholder="Password" required="">

                        <div class="wthree-text">

                            <div class="clear"> </div>
                        </div>

                        <input type="submit" value="SIGNUP" <a href="ticket_check.jsp"></a>
                    </form>
                    <p> Have an Account? <a href="login.jsp"> Login Now!</a></p>
                </div>
            </div>
            <!-- copyright -->

           
        </div>
    </body>
</html>
