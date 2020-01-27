<%-- 
    Document   : show_bus_details
    Created on : Apr 7, 2019, 12:42:43 AM
    Author     : ASUS
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>BookmyBus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //Custom Theme files -->
    <!-- web font -->
    <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
</head>
<style>
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
    }
    th, td {
        padding: 8px;
        text-align: left;
    }
    table#t01 {
        width: 70%;    
        background-color: #f1f1c1;
    }
</style>
<body>
    <div class="main-w3layouts wrapper">

        <% String bus_id = null;
            String bus_from = null;
            String bus_to = null;
            String seat_no = null;
            String dates = null;
        %>
        <%
            ResultSet rs = (ResultSet) request.getAttribute("total_table");

        %>




        <h1>Bus Details</h1> 
        <table style="width:100%" id="t01">
            <tr bgcolor="00FF7F"> 
                <th><b>Bus ID</b></th> 
                <th><b>Starts From</b></th> 
                <th><b>Destination</b></th> 
                <th><b>Number of Available Seats</b></th> 
                <th><b>Date</b></th> 
            </tr> 


            <tr>

                <%                                          while (rs.next()) {%>
                <td> <%=  rs.getString(1)%> </td>

                <td> <%=  rs.getString(2)%> </td>

                <td> <%=  rs.getString(3)%> </td>

                <td> <%=  rs.getInt(5)%> </td>

                <td> <%=  rs.getString(4)%> </td>

            </tr> 
            <%

                }
            %>
        </table> 


        
    </div>
</body>
</html>
