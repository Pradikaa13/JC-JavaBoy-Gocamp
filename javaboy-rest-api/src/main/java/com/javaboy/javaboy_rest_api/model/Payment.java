package com.javaboy.javaboy_rest_api.model;


/*
IntelliJ IDEA 2025.1.2 (Ultimate Edition)
Build #IU-251.26094.121, built on June 3, 2025
@Author lenovo Achmadi Suryo Utomo
Java Developer
Created on 18/07/2025 17:40
@Last Modified 18/07/2025 17:40
Version 1.0
*/
import jakarta.persistence.*;

@Entity
@Table(name = "payment")
public class Payment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String email;
    private String noHp;
    private String photoId;
    private String photoTransfer;
    private String address;

    // Getters and setters

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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNoHp() {
        return noHp;
    }

    public void setNoHp(String noHp) {
        this.noHp = noHp;
    }

    public String getPhotoId() {
        return photoId;
    }

    public void setPhotoId(String photoId) {
        this.photoId = photoId;
    }

    public String getPhotoTransfer() {
        return photoTransfer;
    }

    public void setPhotoTransfer(String photoTransfer) {
        this.photoTransfer = photoTransfer;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
