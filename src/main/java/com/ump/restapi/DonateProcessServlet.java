package com.ump.restapi;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet for processing donations.
 */
@WebServlet(name = "DonateProcessServlet", urlPatterns = {"/DonateProcessServlet"})
public class DonateProcessServlet extends HttpServlet {

    /**
     * Handles the HTTP requests (GET and POST).
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to the payment page for GET requests
        request.getRequestDispatcher("/WEB-INF/Pages/Payment/Payment.html").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Process the donation submission for POST requests
        String donationAmount = request.getParameter("amount");
        // Add logic to process the donation here

        // Set a message and forward back to the same page (or a confirmation message)
        request.setAttribute("message", "Thank you for your donation of " + donationAmount);
        request.getRequestDispatcher("/WEB-INF/Pages/Payment/Payment.html").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Servlet for processing donations on a single page";
    }
}
