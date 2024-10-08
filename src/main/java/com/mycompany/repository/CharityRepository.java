package com.mycompany.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import com.mycompany.model.Charity;

import java.util.List;

public class CharityRepository {

    @PersistenceContext
    private EntityManager entityManager;

    @Transactional
    public void save(Charity charity) {
        entityManager.persist(charity);
    }

    public Charity findById(Long id) {
        return entityManager.find(Charity.class, id);
    }
    
    public List<Charity> findByUserId(Long userId) {
        return entityManager.createQuery("SELECT c FROM Charity c WHERE c.userId = :userId", Charity.class)
                .setParameter("userId", userId)
                .getResultList();
    }
}
