<%-- 
    Document   : ticket_booking_form
    Created on : Apr 7, 2019, 9:23:57 PM
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

    </head>
    <body>
        <div class="main-w3layouts wrapper">
            <h1>Book Your Ticket</h1>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <form action="book_ticket" method="post">

                        <input class="text" type="text" name="bus_id" placeholder="Bus ID" required=""><br>
                        <input class="text" type="text" name="passenger_name" placeholder="Passenger's Name" required="">
                        <br> <br>
                        <span class="label success" style="color:whitesmoke" name="passenger_source" required="">Boarding from      </span>				
                        <select name="source">
                            <option style="color:black" value="Dhaka" width="50px" padding="320px">Dhaka</option>
                            <option style="color:black" value="Sylhet" width="50px" padding="320px">Sylhet</option>

                        </select>
                        <br><br>
                        <!--</form> -->

                        <span class="label success" style="color:whitesmoke" width="50px" name="passenger_destination" required="">Destination     </span>				
                        <select name="destination">
                            <option style="color:black" value="Dhaka">Dhaka</option>
                            <option style="color:black" value="Sylhet">Sylhet</option>

                        </select>
                        <br>      <font color="white" >No.of Passengers</font>  <input type="number" name="passenger_seat_no" min="1" max="5" required="">

                        <br>	<br>	
                        <font color="white">Travel Date</font> 			<input class="text" type="date" name="travel_date" placeholder="Date" required="" >

                        <div class="wthree-text">

                            <div class="clear"> </div>
                        </div>

                        <input type="submit" value="Check now" onclick="showAlert()" >
                        <h3>

                        </h3>

                    </form>

                </div>
            </div>
            <!-- copyright -->

           
        </div>
    </body>

</html>
