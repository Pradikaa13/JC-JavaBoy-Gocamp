package com.javaboy.javaboy_rest_api.model;


/*
IntelliJ IDEA 2025.1.2 (Ultimate Edition)
Build #IU-251.26094.121, built on June 3, 2025
@Author lenovo Achmadi Suryo Utomo
Java Developer
Created on 18/07/2025 17:39
@Last Modified 18/07/2025 17:39
Version 1.0
*/
import jakarta.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "booking")
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String noBooking;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    @ManyToOne
    @JoinColumn(name = "users_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    // Getters and setters

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNoBooking() {
        return noBooking;
    }

    public void setNoBooking(String noBooking) {
        this.noBooking = noBooking;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
