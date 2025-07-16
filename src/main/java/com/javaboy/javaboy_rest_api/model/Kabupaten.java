package com.javaboy.javaboy_rest_api.model;


/*
IntelliJ IDEA 2025.1.2 (Ultimate Edition)
Build #IU-251.26094.121, built on June 3, 2025
@Author lenovo Achmadi Suryo Utomo
Java Developer
Created on 16/07/2025 0:42
@Last Modified 16/07/2025 0:42
Version 1.0
*/

import jakarta.persistence.*;

@Entity
@Table(name = "kabupaten") // Nama tabel di database

public class Kabupaten {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "provinsi_id")
    private Long provinsiId; // Foreign key

    private String namaKabupaten; // Menggunakan camelCase untuk Java

    // Relasi ke Provinsi (jika Anda akan menggunakannya)
    // @ManyToOne
    // @JoinColumn(name = "provinsi_id", insertable = false, updatable = false)
    // private Provinsi provinsi;

    public Kabupaten() {
    }

    // Getter dan Setter
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getProvinsiId() {
        return provinsiId;
    }

    public void setProvinsiId(Long provinsiId) {
        this.provinsiId = provinsiId;
    }

    public String getNamaKabupaten() {
        return namaKabupaten;
    }

    public void setNamaKabupaten(String namaKabupaten) {
        this.namaKabupaten = namaKabupaten;
    }
}
