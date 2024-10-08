package com.mycompany.service;

import com.mycompany.model.Charity;
import com.mycompany.model.Donors;
import com.mycompany.repository.CharityRepository;
import com.mycompany.repository.DonorRepository;
import jakarta.ejb.Stateless;
import jakarta.inject.Inject;
import java.math.BigDecimal;
import java.util.List;

@Stateless
public class DonorService {

    @Inject
    private DonorRepository donorRepository;

    @Inject
    private CharityRepository charityRepository;

    public String registerDonor(String name, String surname, String email, BigDecimal amount, Long charityId) {
        Charity charity = charityRepository.findById(charityId);

        if (charity == null) {
            return "Charity not found.";
        }

        // Create Donors instance with charityId instead of the Charity object
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
}
