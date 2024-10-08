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
    private UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Auth/Signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String firstName = request.getParameter("firstname");
        String lastName = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String cellphoneNumber = request.getParameter("phonenumber");

        // Register the user and capture the response message
        String resultMessage = userService.registerUser(firstName, lastName, email, password, cellphoneNumber);

        // Check if registration was successful
        if (resultMessage.equals("User registered successfully.")) {
            // Redirect to the Onboarding page
            response.sendRedirect(request.getContextPath() + "/Signin"); // Adjust the path to your onboarding page
        } else {
            // Set the message as a request attribute for displaying in the signup form
            request.setAttribute("resultMessage", resultMessage);

            // Forward back to the signup page to display the message
            request.getRequestDispatcher("/WEB-INF/Auth/Signup.jsp").forward(request, response);
        }
    }
}
