package com.mycompany.chariydonations.implementation;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Persistence;
import ump.charitydonations.model.User;

public class UserDaoImpl {
    private EntityManagerFactory emf;
    private EntityManager em;

    public UserDaoImpl() {
        emf = Persistence.createEntityManagerFactory("CharityDonationUP");
        em = emf.createEntityManager();
    }

    public EntityManager getEntityManager() {
        return em;
    }

    public boolean registerUser(User user) {
        
        EntityTransaction transaction = em.getTransaction();
        try {
            transaction.begin();
            em.persist(user); // Save user to the database
            transaction.commit();
            return true;
        } catch (Exception e) {
            if (transaction.isActive()) {
                transaction.rollback(); // Rollback if any error occurs
            }
            e.printStackTrace(); // Log or handle the exception
            return false;
        }
    }
    // You should also handle closing the EntityManager and EntityManagerFactory properly
    public void close() {
        if (em != null && em.isOpen()) {
            em.close();
        }
        if (emf != null && emf.isOpen()) {
            emf.close();
        }
    }
}
