package com.ump.restapi;

import com.mycompany.model.Donors;
import com.mycompany.service.DonorService;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;

/**
 * Servlet for processing donations.
 */
@WebServlet(name = "DonateProcessServlet", urlPatterns = {"/DonateProcessServlet"})
public class DonateProcessServlet extends HttpServlet {
    @Inject
    private DonorService donorService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fullName = request.getParameter("name"); // Full name from the parameter
        String email = request.getParameter("email");
        String amountString = request.getParameter("amount");
        String phone = request.getParameter("phone");
        String status = request.getParameter("status");

        String name = null;
        String surname = null;
        if (fullName != null) {
            String[] nameParts = fullName.split(" ");
            if (nameParts.length >= 2) {
                name = nameParts[0]; // First name
                surname = nameParts[1]; // Surname
            } else {
                // Handle case where there might not be a surname
                name = fullName; // If only one part is provided, treat it as the first name
            }
        }

        BigDecimal amount = null;
        try {
            amount = new BigDecimal(amountString);
        } catch (NumberFormatException e) {
            // Handle invalid number format
            request.setAttribute("error", "Invalid donation amount.");
            request.getRequestDispatcher("/WEB-INF/Pages/Payment/Payment.html").forward(request, response);
            return;
        }

        Long charityId = 1L;  // Assuming charity ID 1 exists in your system

        if ("success".equals(status)) {
            String result = donorService.registerDonor(name, surname, email, amount, charityId);
            request.setAttribute("success", "Donation processed successfully!");
        }

        request.getRequestDispatcher("/WEB-INF/Pages/Payment/Payment.html").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Pages/Payment/Payment.html").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet for processing donations on a single page";
    }
}
