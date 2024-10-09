package com.ump.portal;

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
 *
 * @author sdaniel
 */
@WebServlet(name = "Donate", urlPatterns = {"/Donate"})
public class Donate extends HttpServlet {

    @Inject
    private DonorService donorService;  // Inject the DonorService

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
        
        // Forward to the JSP page for the donation form
        request.getRequestDispatcher("/WEB-INF/Pages/Portal/Donate.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form values
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        BigDecimal amount = new BigDecimal(request.getParameter("amount"));
        Long charityId = Long.parseLong(request.getParameter("charityId"));

        // Register the donor using the DonorService
        String result = donorService.registerDonor(name, surname, email, amount, charityId);

        // Pass the result message to the JSP for display
        request.setAttribute("resultMessage", result);

        // Forward the request back to the form page, displaying the result
        request.getRequestDispatcher("/WEB-INF/Pages/Portal/Donate.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Handles donation form submission and donor registration.";
    }
}
