/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
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
public class register extends HttpServlet {

    private static final long serialVersionUID = 1L;
    protected HttpServletRequest request;
    protected HttpServletResponse response;

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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
        PrintWriter out = response.getWriter();

        String uname = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        try {
           // dbcon mydb = new dbcon();
            //   Connection conn = mydb.getCon();

            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/busticketdb", "root", "");

            Statement st = (Statement) conn.createStatement();

            String sql = "insert into registration (username,password,email) values('" + uname + "','" + password + "','" + email + "')";
            //  String sql = "select * from passenger_travel_info";

            st.executeUpdate(sql);

            RequestDispatcher req = request.getRequestDispatcher("ticket_check.jsp");
            req.include(request, response);

            /* out.println("Data is Successfully Inserted into Student Table");
             out.println("<html>");
             out.println("<head>");
             out.println("<body>");
             //out.println("<a href=\"seat_book.html\">link text</a>");
             out.println("</body>");
             out.println("</head>");
            
             out.println("</html>");
             //<a href="url">link text</a>*/
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
