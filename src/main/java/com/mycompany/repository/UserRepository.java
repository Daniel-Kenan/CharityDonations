package com.mycompany.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import com.mycompany.model.User;

public class UserRepository {

    @PersistenceContext
    private EntityManager entityManager;

    @Transactional
    public void save(User user) {
        entityManager.persist(user);
    }

    public User findByEmail(String email) {
        try {
            return entityManager.createQuery("SELECT u FROM User u WHERE u.email = :email", User.class)
                    .setParameter("email", email)
                    .getSingleResult();
        } catch (Exception e) {
            return null; // No user found with this email
        }
    }

    public User findByCellphoneNumber(String cellphoneNumber) {
        try {
            return entityManager.createQuery("SELECT u FROM User u WHERE u.cellphoneNumber = :cellphoneNumber", User.class)
                    .setParameter("cellphoneNumber", cellphoneNumber)
                    .getSingleResult();
        } catch (Exception e) {
            return null; // No user found with this cellphone number
        }
    }
}
