package com.javaboy.javaboy_rest_api.core.service;

import com.javaboy.javaboy_rest_api.dto.validasi.LoginRequest;

public interface LoginService {
    void login(LoginRequest loginRequest);
    void forgotPassword(String email);
    void rememberMe(String email, boolean remember);
}
