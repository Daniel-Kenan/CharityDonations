package com.mycompany.service;

import com.mycompany.repository.CharityRepository;
import com.mycompany.model.Charity;
import jakarta.ejb.Stateless;
import jakarta.inject.Inject;
import java.util.List;

@Stateless
public class CharityService {

    @Inject
    private CharityRepository charityRepository;

    public String registerCharity(Long userId, String status, String startDate, String endDate, String url) {
        // Validate that the userId is not null
        if (userId == null) {
            return "Invalid user ID.";
        }

        // Check if a charity already exists for the same user
        if (!charityRepository.findByUserId(userId).isEmpty()) {
            return "Charity already exists for this user.";
        }

        // Create and save the new charity
        Charity charity = new Charity(userId, status, startDate, endDate, url);
        charityRepository.save(charity);
        
        return "Charity registered successfully.";
    }

    public Charity findById(Long id) {
        return charityRepository.findById(id);
    }
    
    public List<Charity> findByUserId(Long userId) {
        return charityRepository.findByUserId(userId);
    }

    public String updateCharityStatus(Long id, String newStatus) {
        Charity charity = charityRepository.findById(id);

        if (charity == null) {
            return "Charity not found.";
        }

        charity.setStatus(newStatus);
        charityRepository.save(charity);

        return "Charity status updated successfully.";
    }
}
