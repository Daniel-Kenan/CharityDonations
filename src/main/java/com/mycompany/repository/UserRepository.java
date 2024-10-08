package com.mycompany.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;
import com.mycompany.model.User;

public class UserRepository {

    @PersistenceContext
    private EntityManager entityManager;

    // No-argument constructor
    public UserRepository() {
    }

    @Transactional
    public void save(User user) {
        entityManager.persist(user);
    }
}
