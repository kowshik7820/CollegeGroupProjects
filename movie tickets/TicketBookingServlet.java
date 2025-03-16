package demo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hariharaveramallu")
public class TicketBookingServlet extends HttpServlet {
    private static final String URL = "jdbc:postgresql://localhost:5432/movietickets";
    private static final String USER = "postgres";
    private static final String PASSWORD = "Admin";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int selectedSeatsCount = Integer.parseInt(request.getParameter("selectedSeatsCount"));
        double discountedAmount = Double.parseDouble(request.getParameter("discountedAmount"));

        try (Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)) {
            String sql = "INSERT INTO booking (selectedseatscount, discountedamount) VALUES (?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setInt(1, selectedSeatsCount);
                pstmt.setDouble(2, discountedAmount);
                pstmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        System.out.println("Received Seats: " + selectedSeatsCount);
        System.out.println("Received Discounted Amount: " + discountedAmount);

        response.setContentType("text/plain");
        response.getWriter().write("Booking successful!");
    }
}
