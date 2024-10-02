/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.chariydonations.dao;

import ump.charitydonations.model.User;

/**
 *
 * @author sdani
 */
public interface UserDao {
   void addUser(User user);
   boolean registerUser(User user);
}
