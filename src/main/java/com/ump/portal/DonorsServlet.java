package com.ump.portal;

import com.mycompany.service.DonorService;
import com.mycompany.model.Donors;
import jakarta.inject.Inject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "Donors", urlPatterns = {"/Donors"})
public class DonorsServlet extends HttpServlet {

    @Inject
    private DonorService donorService;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Donors> donorList = donorService.findAll();
System.out.println("Donor List Size: " + donorList.size()); // Get the list of donors
        request.setAttribute("donorList", donorList); // Set the list as a request attribute
        request.getRequestDispatcher("/WEB-INF/Pages/Portal/Donors.jsp").forward(request, response);
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
        return "Donor Management Servlet";
    }
}
