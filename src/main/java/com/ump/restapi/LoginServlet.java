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
@WebServlet("/Signin") // Specify the URL pattern for this servlet
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Set response content type
       request.getRequestDispatcher("/WEB-INF/Auth/Login.jsp").forward(request, response);
        
    }
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // If needed, you can process POST requests here
        doGet(request, response); // Optionally call doGet for POST as well
    }               

    @Override
    public String getServletInfo() {    
        return "LoginServelet that responds with a greeting.";
    }
}
