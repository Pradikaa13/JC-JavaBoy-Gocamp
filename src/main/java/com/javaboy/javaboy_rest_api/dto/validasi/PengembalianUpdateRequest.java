package com.javaboy.javaboy_rest_api.dto.validasi;


/*
IntelliJ IDEA 2025.1.2 (Ultimate Edition)
Build #IU-251.26094.121, built on June 3, 2025
@Author lenovo Achmadi Suryo Utomo
Java Developer
Created on 15/07/2025 23:45
@Last Modified 15/07/2025 23:45
Version 1.0
*/
import jakarta.validation.constraints.*;

public class PengembalianUpdateRequest {
    @Pattern(regexp = ".*\\.(jpg|jpeg|png)$", message = "Format foto harus berupa jpg, jpeg, atau png")
    private String photo; // Ditangani via MultipartFile

    @NotBlank(message = "Nama produk wajib diisi")
    private String productName;

    @NotBlank(message = "Deskripsi produk wajib diisi")
    private String productDescription;

    @NotNull(message = "Harga wajib diisi")
    private Double price;

    @NotBlank(message = "Kategori 1 wajib diisi")
    private String category1;

    @NotBlank(message = "Kategori 2 wajib diisi")
    private String category2;

    // Getters and Setters
}
