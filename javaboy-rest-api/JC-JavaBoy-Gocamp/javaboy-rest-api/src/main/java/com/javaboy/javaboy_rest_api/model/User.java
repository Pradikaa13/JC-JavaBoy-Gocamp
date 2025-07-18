package com.javaboy.javaboy_rest_api.model;


/*
IntelliJ IDEA 2025.1.2 (Ultimate Edition)
Build #IU-251.26094.121, built on June 3, 2025
@Author lenovo Achmadi Suryo Utomo
Java Developer
Created on 16/07/2025 0:26
@Last Modified 16/07/2025 0:26
Version 1.0
*/
import jakarta.persistence.*; // Untuk JPA Anotasi
import java.util.Date; // Untuk tipe data Date

@Entity
@Table(name = "users") // Nama tabel di database, jika berbeda dari nama kelas

public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id; // Umumnya menggunakan Long untuk ID

    private String name;
    private String email;
    private String password; // Pastikan ini di-hash sebelum disimpan
    private String noHp; // Menggunakan camelCase untuk Java

    @Column(name = "provinsi_id")
    private Long provinsiId; // Foreign key

    @Column(name = "kabupaten_id")
    private Long kabupatenId; // Foreign key

    @Column(name = "agama_id")
    private Long agamaId; // Foreign key

    private String usertype; // 'user', 'admin', dll.

    // Jika ingin menyimpan timestamp otomatis
    @Column(name = "created_at", updatable = false)
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;

    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;

    // Relasi ke Provinsi (jika Anda akan menggunakannya)
    // @ManyToOne
    // @JoinColumn(name = "provinsi_id", insertable = false, updatable = false)
    // private Provinsi provinsi;

    // Relasi ke Kabupaten (jika Anda akan menggunakannya)
    // @ManyToOne
    // @JoinColumn(name = "kabupaten_id", insertable = false, updatable = false)
    // private Kabupaten kabupaten;

    // Relasi ke Agama (jika Anda akan menggunakannya)
    // @ManyToOne
    // @JoinColumn(name = "agama_id", insertable = false, updatable = false)
    // private Agama agama;

    // Konstruktor (opsional, tapi disarankan)
    public User() {
    }

    // Getter dan Setter untuk semua field
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNoHp() {
        return noHp;
    }

    public void setNoHp(String noHp) {
        this.noHp = noHp;
    }

    public Long getProvinsiId() {
        return provinsiId;
    }

    public void setProvinsiId(Long provinsiId) {
        this.provinsiId = provinsiId;
    }

    public Long getKabupatenId() {
        return kabupatenId;
    }

    public void setKabupatenId(Long kabupatenId) {
        this.kabupatenId = kabupatenId;
    }

    public Long getAgamaId() {
        return agamaId;
    }

    public void setAgamaId(Long agamaId) {
        this.agamaId = agamaId;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    // Callback untuk otomatis mengisi createdAt dan updatedAt
    @PrePersist
    protected void onCreate() {
        createdAt = new Date();
        updatedAt = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        updatedAt = new Date();
    }
}
