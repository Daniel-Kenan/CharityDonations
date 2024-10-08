package com.mycompany.repository;

import com.mycompany.model.Donors;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.List;

@Stateless
public class DonorRepository {

    @PersistenceContext(unitName = "CharityDonationUP")
    private EntityManager em;

    public void save(Donors donor) {
        em.persist(donor);
    }

    public Donors findById(Long id) {
        return em.find(Donors.class, id);
    }

    public List<Donors> findAll() {
        return em.createQuery("SELECT d FROM Donor d", Donors.class).getResultList();
    }

    public List<Donors> findByCharityId(Long charityId) {
        return em.createQuery("SELECT d FROM Donor d WHERE d.charity.id = :charityId", Donors.class)
                .setParameter("charityId", charityId)
                .getResultList();
    }
}
