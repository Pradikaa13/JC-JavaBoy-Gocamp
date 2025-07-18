package com.javaboy.javaboy_rest_api.core.service;

import com.javaboy.javaboy_rest_api.dto.validasi.ForgotPasswordRequest;

public interface ResetPasswordService {
    void sendResetLink(ForgotPasswordRequest request);
}
