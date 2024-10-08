package com.ump.portal;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Logout")
public class LogoutServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Invalidate the user session
        request.getSession().invalidate();

        // Redirect to the login page or home page
        response.sendRedirect(request.getContextPath() + "/Signin");
    }

    @Override
    public String getServletInfo() {
        return "LogoutServlet that handles user logout.";
    }
}
