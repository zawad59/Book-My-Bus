/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
public class admin_info_insert extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String bus_ID = request.getParameter("bus_id");

        String bus_source = request.getParameter("source");
        String bus_destination = request.getParameter("destination");
        String travel_date = request.getParameter("date");
        String total_seats = request.getParameter("seat_no");

        try {
           // dbcon mydb = new dbcon();
            //Connection conn = mydb.getCon();

            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/busticketdb", "root", "");

            Statement st = (Statement) conn.createStatement();

            String sql = "insert into bus_info (bus_ID, bus_from, bus_to, date,seat_number) values('" + bus_ID + "','" + bus_source + "','" + bus_destination + "','" + travel_date + "','" + total_seats + "')";

            st.executeUpdate(sql);

            ResultSet rs = st.executeQuery("select * from bus_info");

            request.setAttribute("total_table", rs);
            RequestDispatcher rd
                    = request.getRequestDispatcher("show_bus_details.jsp");
            rd.include(request, response);
            /* out.println("Data is Successfully Inserted into Passenger Table");
             out.println("<html>");
             out.println("<head>");
             out.println("<body>");
             //out.println("<a href=\"seat_book.html\">link text</a>");
             out.println("</body>");
             out.println("</head>");
            
             out.println("</html>");*/
            //<a href="url">link text</a>
        } catch (ClassNotFoundException e) {

            e.printStackTrace();

        } catch (SQLException e) {

            e.printStackTrace();

        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
