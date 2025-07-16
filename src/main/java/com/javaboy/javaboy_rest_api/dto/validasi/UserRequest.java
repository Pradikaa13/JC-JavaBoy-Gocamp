package com.javaboy.javaboy_rest_api.dto.validasi;


/*
IntelliJ IDEA 2025.1.2 (Ultimate Edition)
Build #IU-251.26094.121, built on June 3, 2025
@Author lenovo Achmadi Suryo Utomo
Java Developer
Created on 15/07/2025 22:44
@Last Modified 15/07/2025 22:44
Version 1.0
*/

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.*;
import lombok.Data;

@Data
public class UserRequest {
    @NotBlank(message = "Nama wajib diisi")
    @Size(max = 255)
    private String name;

    @NotBlank(message = "Email wajib diisi")
    @Email(message = "Format email tidak valid")
    @Size(max = 255)
    private String email;

    @NotBlank(message = "Password wajib diisi")
    private String password;

    @NotBlank(message = "No HP wajib diisi")
    @Pattern(regexp = "^(\\+62|62|0)8[1-9][0-9]{6,9}$", message = "Format nomor HP tidak valid")
    private String noHp;

    @NotBlank(message = "Provinsi wajib diisi")
    @Size(max = 20)
    private String provinsiId;

    @NotBlank(message = "Kabupaten wajib diisi")
    @Size(max = 20)
    private String kabupatenId;

    @NotBlank(message = "Agama wajib diisi")
    @Size(max = 20)
    private String agamaId;

    @NotBlank(message = "Usertype wajib diisi")
    private String usertype;

    // Getters and Setters
}