package com.javaboy.javaboy_rest_api.dto.validasi;


/*
IntelliJ IDEA 2025.1.2 (Ultimate Edition)
Build #IU-251.26094.121, built on June 3, 2025
@Author lenovo Achmadi Suryo Utomo
Java Developer
Created on 15/07/2025 23:44
@Last Modified 15/07/2025 23:44
Version 1.0
*/
import jakarta.validation.constraints.*;

public class PengembalianRequest {

    @NotBlank(message = "User ID wajib diisi")
    private String userId;

    @NotBlank(message = "Product ID wajib diisi")
    private String productId;

    @NotBlank(message = "Nama wajib diisi")
    private String name;

    @NotBlank(message = "Nama produk wajib diisi")
    private String productName;

    @NotNull(message = "Jumlah produk wajib diisi")
    private Integer quantity;

    @NotNull(message = "Jumlah hari wajib diisi")
    private Integer days;

    @NotNull(message = "Total harga wajib diisi")
    private Double totalPrice;

    // Getters and Setters
}
