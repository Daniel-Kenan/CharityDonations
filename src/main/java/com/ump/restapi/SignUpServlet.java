package com.ump.restapi;

import com.mycompany.chariydonations.implementation.UserDaoImpl;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet; // Import the WebServlet annotation
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ump.charitydonations.model.User;

/**
 *
 * @author sdani
 */

// Annotate the servlet with a URL pattern
@WebServlet("/Signup") // Specify the URL pattern for this servlet
public class SignUpServlet extends HttpServlet {
 private EntityManagerFactory emf;

    @Override
    public void init() throws ServletException {
        // Initialize the EntityManagerFactory when the servlet is created
        emf = Persistence.createEntityManagerFactory("CharityDonationUP");
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Set response content type
       request.getRequestDispatcher("/WEB-INF/Auth/Signup.jsp").forward(request, response);
        
    }
        
    
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get user input from the registration form
        String username = request.getParameter("firstname");
        String surname = request.getParameter("lastname");
        String password = request.getParameter("password");
     
        // Create a new User object
        User newUser = new User();
        newUser.setUsername(username);
        newUser.setSurname(surname);
        newUser.setPassword(password);

        // Create EntityManager and UserDaoImpl to persist the user
        EntityManager em = emf.createEntityManager();
        UserDaoImpl userDao = new UserDaoImpl();

        boolean isRegistered = userDao.registerUser(newUser);

        // Close the EntityManager
        em.close();

        // Provide feedback to the user (you can customize this response)
        if (isRegistered) {
            response.getWriter().write("User registered successfully!");
        } else {
            response.getWriter().write("User registration failed.");
        }
    }

    @Override
    public void destroy() {
        // Close EntityManagerFactory when the servlet is destroyed
        if (emf != null) {
            emf.close();
        }
    }

    @Override
    public String getServletInfo() {    
        return "LoginServelet that responds with a greeting.";
    }
}
