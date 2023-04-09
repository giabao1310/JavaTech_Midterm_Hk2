package com.example.demo.service;

import lombok.RequiredArgsConstructor;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Cart;
import com.example.demo.repository.CartRepository;



@Service
@RequiredArgsConstructor
public class CartService {

    @Autowired
    CartRepository cartRepository;

    public void save(Cart item) {
        cartRepository.save(item);
    }

    public void remove(Cart cart) {
        cartRepository.delete(cart);
    }
}
