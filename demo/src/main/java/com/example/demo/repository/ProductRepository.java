package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.example.demo.model.Product;


@Component
public interface ProductRepository extends JpaRepository<Product, Long> {
    
}