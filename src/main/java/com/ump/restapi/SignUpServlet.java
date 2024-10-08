package com.ump.restapi;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet; 
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.inject.Inject;
import com.mycompany.service.UserService;

import java.io.IOException;

@WebServlet("/Signup") 
public class SignUpServlet extends HttpServlet {

    @Inject
    private UserService userService;  // Inject UserService

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Forward to signup page
        request.getRequestDispatcher("/WEB-INF/Auth/Signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Get user input from the registration form
        String username = request.getParameter("firstname");
        String surname = request.getParameter("lastname");
        String password = request.getParameter("password");

        // Register the user
        userService.registerUser(username, password);

        // Optionally redirect or forward to a success page
        response.sendRedirect(request.getContextPath() + "/Onboarding");  // Example redirect
    }
}
