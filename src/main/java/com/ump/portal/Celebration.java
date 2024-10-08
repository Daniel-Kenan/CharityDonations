package com.ump.portal;

import com.mycompany.service.CharityService;
import jakarta.ejb.EJB;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "Celebration", urlPatterns = {"/Celebration"})
public class Celebration extends HttpServlet {

    @EJB
    private CharityService charityService; // Injecting the CharityService

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         Long userId = 1L; // Example user ID
        String status = "Active"; // Example status
        String startDate = "2024-01-01"; // Example start date
        String endDate = "2024-12-31"; // Example end date
        String url = "http://example.com"; // Example URL

        // Call the charity service to register the charity
        String result = charityService.registerCharity(userId, status, startDate, endDate, url);
        
        
        request.getRequestDispatcher("/WEB-INF/Pages/Celebration.html").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Create a dummy charity
        Long userId = 1L; // Example user ID
        String status = "Active"; // Example status
        String startDate = "2024-01-01"; // Example start date
        String endDate = "2024-12-31"; // Example end date
        String url = "http://example.com"; // Example URL

        // Call the charity service to register the charity
        String result = charityService.registerCharity(userId, status, startDate, endDate, url);

        // Set the result message as a request attribute to display on the page
        request.setAttribute("resultMessage", result);

        // Forward to a result page to display the outcome
        request.getRequestDispatcher("/WEB-INF/Pages/CelebrationResult.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
