package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Receipt;
import com.example.demo.repository.ReceiptRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReceiptService {

    @Autowired
    ReceiptRepository receiptRepository;

    public Receipt addReceipt(Receipt receipt) {
        return receiptRepository.save(receipt);
    }

}
