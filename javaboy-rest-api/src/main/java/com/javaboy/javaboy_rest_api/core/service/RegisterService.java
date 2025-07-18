package com.javaboy.javaboy_rest_api.core.service;

import com.javaboy.javaboy_rest_api.dto.validasi.RegisterRequest;

public interface RegisterService {
    void registerUser(RegisterRequest registerRequest);
}