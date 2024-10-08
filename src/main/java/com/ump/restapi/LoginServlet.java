package com.ump.restapi;

import com.mycompany.service.UserService;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Signin")
public class LoginServlet extends HttpServlet {

    @Inject
    private UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/Auth/Login.jsp").forward(request, response);
    }
        
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String result = userService.loginUser(email, password);

        if (result.equals("Login successful")) {
            // Redirect to Onboarding or home page
            response.sendRedirect(request.getContextPath() + "/Onboarding");
        } else {
            // Set an error message and return to the login page
            request.setAttribute("errorMessage", result);
            doGet(request, response); // Forward back to the login page
        }
    }               

    @Override
    public String getServletInfo() {    
        return "LoginServlet that handles user login.";
    }
}
