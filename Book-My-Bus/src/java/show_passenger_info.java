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
public class show_passenger_info extends HttpServlet {

    String name = null;
    /*  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
     throws ServletException, IOException {
     response.setContentType("text/html;charset=UTF-8");
     try (PrintWriter out = response.getWriter()) {
     /* TODO output your page here. You may use following sample code. */
    /*    out.println("<!DOCTYPE html>");
     out.println("<html>");
     out.println("<head>");
     out.println("<title>Servlet show_passenger_info</title>");            
     out.println("</head>");
     out.println("<body>");
     out.println("<h1>Servlet show_passenger_info at " + request.getContextPath() + "</h1>");
     out.println("</body>");
     out.println("</html>");
     }
     } */

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
        name = (String) request.getAttribute("insertvalue");
        
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
       // processRequest(request, response);

        PrintWriter out = response.getWriter();
        String passenger_name = name;
        out.println(passenger_name);

        try {

            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/busticketdb", "root", "");

            Statement st = (Statement) conn.createStatement();

            String sql = "select * from passenger_travel_info where passenger_name = '" + passenger_name + "'";

            ResultSet rs = st.executeQuery(sql);
            
            request.setAttribute("info", rs);
            
            RequestDispatcher rd
                    = request.getRequestDispatcher("passenger_info_table.jsp");
            rd.include(request, response);
            request.setAttribute("myname", passenger_name);
            RequestDispatcher rd1
                    = request.getRequestDispatcher("passenger_info_table.jsp");
            rd1.include(request, response);
            

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
