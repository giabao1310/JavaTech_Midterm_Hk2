package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.example.demo.model.Receipt;

@Component

public interface ReceiptRepository extends JpaRepository<Receipt, Long> {
    
}
