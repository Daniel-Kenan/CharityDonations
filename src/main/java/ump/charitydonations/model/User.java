package ump.charitydonations.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;

/**
 *
 * @author sdaniel
 */
@Entity
@Table(name = "users")
public class User {

    @Id
    private int id;

    @Column(name = "username")
    private String username;

    @Column(name = "surname")
    private String surname;

    @Column(name = "password")
    private String password;

    // No-argument constructor is required by JPA
    public User() {
    }

    public User(int id, String username, String surname, String password) {
        this.id = id;
        this.username = username;
        this.surname = surname;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
