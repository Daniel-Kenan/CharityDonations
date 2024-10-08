package com.ump.restapi;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet; // Import the WebServlet annotation
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author sdani
 */

// Annotate the servlet with a URL pattern
@WebServlet("/Contact") // Specify the URL pattern for this servlet
public class ContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Set response content type
       request.getRequestDispatcher("/WEB-INF/Pages/Contact.jsp").forward(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // If needed, you can process POST requests here
        doGet(request, response); // Optionally call doGet for POST as well
    }

    @Override
    public String getServletInfo() {
        return "Contact that responds with a greeting.";
    }
}
