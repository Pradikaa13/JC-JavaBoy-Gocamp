package com.javaboy.javaboy_rest_api.model;


/*
IntelliJ IDEA 2025.1.2 (Ultimate Edition)
Build #IU-251.26094.121, built on June 3, 2025
@Author lenovo Achmadi Suryo Utomo
Java Developer
Created on 16/07/2025 0:41
@Last Modified 16/07/2025 0:41
Version 1.0
*/
import jakarta.persistence.*;

@Entity
@Table(name = "provinsi") // Nama tabel di database

public class Provinsi {
    @Id
    // Karena id di Laravel bisa jadi bukan auto-increment,
    // kita asumsikan di sini bisa diset secara manual atau tetap auto-increment
    // Jika manual, hilangkan @GeneratedValue
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String namaProvinsi; // Menggunakan camelCase untuk Java

    public Provinsi() {
    }

    // Getter dan Setter
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNamaProvinsi() {
        return namaProvinsi;
    }

    public void setNamaProvinsi(String namaProvinsi) {
        this.namaProvinsi = namaProvinsi;
    }
}
