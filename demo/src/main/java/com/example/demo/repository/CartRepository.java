package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.example.demo.model.Cart;


@Component
public interface CartRepository extends JpaRepository<Cart, Long> {

}
