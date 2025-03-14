package com.example.banking.api.dto.request;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AccountRequest {
    private String accountNumber;
    private Long userId;
}