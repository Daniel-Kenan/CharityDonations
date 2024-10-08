package com.mycompany.service;

import com.mycompany.repository.UserRepository;
import com.mycompany.model.User;
import jakarta.ejb.Stateless;
import jakarta.inject.Inject;

@Stateless
public class UserService {

    @Inject
    private UserRepository userRepository;

    public void registerUser(String username, String password) {
        User user = new User();
        user.setName(username);
        user.setPassword(password);
        
        userRepository.save(user);  // Save the user using the repository
    }
}
