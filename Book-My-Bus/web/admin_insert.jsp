<%-- 
    Document   : admin_insert
    Created on : Apr 6, 2019, 10:54:41 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      
    <head>
        <title>Check Ticket</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<script type="text/javascript">
    </script>
<link href="style.css" rel="stylesheet" type="text/css" media="all" />
       <style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  margin-left: 20px;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
  background-color: green;
}
.active {
  background-color: green;
}
</style>
    </head>
    <body>
       <div class="main-w3layouts wrapper">
                <ul>
   <!--<li><a href="show_bus_info_admin">Bus Informations</a></li> -->
       <form action="show_bus_info_admin" method="Post">
           
        <input type="submit" value="Show Bookings"><br>
        <li><a href="index.html">Logout</a></li>
       </form>      
  
</ul>
		<h1>Insert Bus Info</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="admin_info_insert" method="post">
					
				<input class="text" type="text" name="bus_id" placeholder="Bus ID" required=""><br>
                                 
				<br> <br>
                                <span class="label success" style="color:whitesmoke" name="source" required="">Boarding from      </span>				
                                <select name="source">
    <option style="color:black" value="Dhaka" width="50px" padding="320px">Dhaka</option>
    <option style="color:black" value="Sylhet" width="50px" padding="320px">Sylhet</option>
    
  </select>
                                <br><br>
<!--</form> -->
					
	<span class="label success" style="color:whitesmoke" width="50px" name="destination" required="">Destination     </span>				
        <select name="destination">
            <option style="color:black" value="Dhaka">Dhaka</option>
    <option style="color:black" value="Sylhet">Sylhet</option>
    
  </select>
  <br>      <font color="white" >No.of Passengers</font>  <input type="number" name="seat_no" required="">

  <br>	<br>	
  <font color="white">Travel Date</font> 			<input class="text" type="date" name="date" placeholder="Date" required="" >
					
					<div class="wthree-text">
						
						<div class="clear"> </div>
					</div>
					
                                        <input type="submit" value="Insert now" onclick="showAlert()" >
                                        <h3>
                                            
                                        </h3>

				</form>
				
			</div>
		</div>
		<!-- copyright -->
		
		
	</div>
    </body>
</html>
 