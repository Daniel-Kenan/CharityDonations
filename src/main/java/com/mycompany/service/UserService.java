package com.mycompany.service;

import com.mycompany.repository.UserRepository;
import com.mycompany.model.User;
import jakarta.ejb.Stateless;
import jakarta.inject.Inject;

@Stateless
public class UserService {

    @Inject
    private UserRepository userRepository;

    public String registerUser(String firstName, String lastName, String email, String password, String cellphoneNumber) {
        // Check if a user with the same email or cellphone number already exists
        if (userRepository.findByEmail(email) != null) {
            return "User with this email already exists.";
        }

        if (userRepository.findByCellphoneNumber(cellphoneNumber) != null) {
            return "User with this cellphone number already exists.";
        }

        // Create and save the new user
        User user = new User(firstName, lastName, email, password, cellphoneNumber);
        userRepository.save(user);
        
        return "User registered successfully.";
    }

    public String loginUser(String email, String password) {
        User user = userRepository.findByEmail(email);

        if (user == null) {
            return "User not found.";
        }

        if (!user.getPassword().equals(password)) {
            return "Invalid password.";
        }

        return "Login successful"; // Or you can return some kind of user object or token
    }
}
