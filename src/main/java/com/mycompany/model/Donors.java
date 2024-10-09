package com.mycompany.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Column;
import java.math.BigDecimal;

@Entity
public class Donors {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String surname;

    private String email;

    private BigDecimal amount; // The donation amount

    @Column(name = "charity_id", nullable = false)
    private Long charityId; // The ID of the charity to which the donor donated

    // Default constructor (required by JPA)
    public Donors() {
    }

    // Parameterized constructor
    public Donors(String name, String surname, String email, BigDecimal amount, Long charityId) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.amount = amount;
        this.charityId = charityId;
    }

    // Getters and Setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Long getCharityId() {
        return charityId;
    }

    public void setCharityId(Long charityId) {
        this.charityId = charityId;
    }

    // Optional toString() method for easy debugging
    @Override
    public String toString() {
        return "Donor{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", email='" + email + '\'' +
                ", amount=" + amount +
                ", charityId=" + charityId +
                '}';
    }
}
