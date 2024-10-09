package com.mycompany.service;

import com.mycompany.model.Donors;
import com.mycompany.repository.DonorRepository;
import jakarta.ejb.Stateless;
import jakarta.inject.Inject;
import java.math.BigDecimal;
import java.util.List;

@Stateless
public class DonorService {

    @Inject
    private DonorRepository donorRepository;

    public String registerDonor(String name, String surname, String email, BigDecimal amount, Long charityId) {
        // Check if the charity exists
        // Charity charity = charityRepository.findById(charityId); // Uncomment if Charity check is needed
        // if (charity == null) {
        //     return "Charity not found.";
        // }

        // Validate donor input fields
        if (name == null || surname == null || email == null || amount == null || charityId == null) {
            return "Invalid input: All fields are required.";
        }

        // Create a Donors instance with charityId (no relationships)
        Donors donor = new Donors(name, surname, email, amount, charityId);
        donorRepository.save(donor);

        return "Donor registered successfully.";
    }

    public Donors findById(Long id) {
        return donorRepository.findById(id);
    }

    public List<Donors> findByCharityId(Long charityId) {
        return donorRepository.findByCharityId(charityId);
    }

    // Add the findAll method here
    public List<Donors> findAll() {
        return donorRepository.findAll(); // Call the repository method to get all donors
    }
}
