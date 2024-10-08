package com.ump.portal;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

// Assume you have a UserService that fetches user data
import com.mycompany.service.UserService;
import com.mycompany.model.User;

@WebServlet(name = "Settings", urlPatterns = {"/Settings"})
public class Settings extends HttpServlet {

    private UserService userService = new UserService(); // Assuming you have a UserService to handle user data

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email"); // Get the email from the session

        if (email != null) {
            // Fetch user information from the database using UserService
            User user = userService.findByEmail(email); // This method should return a User object based on the email

            // Check if user is found
            if (user != null) {                         
                // Set user details in the session
                session.setAttribute("firstName", user.getFirstName());
                session.setAttribute("lastName", user.getLastName());
                session.setAttribute("phone", user.getCellphoneNumber());
            }
        }

        request.getRequestDispatcher("/WEB-INF/Pages/Portal/Settings.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
