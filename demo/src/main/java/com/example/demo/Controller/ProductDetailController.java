package com.example.demo.Controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Cart;
import com.example.demo.model.Product;
import com.example.demo.service.CartService;
import com.example.demo.service.ProductService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProductDetailController {
    @Autowired
    private ProductService productService;

    @Autowired
    private CartService cartService;

    @GetMapping("/product_detail")
    public String home() {
        return "product_detail";
    }

    @PostMapping("/cart")
    public String addToCart(@RequestParam long productId, @RequestParam int productQuantity, HttpSession httpSession) {
        Product product = productService.getProductById(productId);
        Cart item = (Cart) httpSession.getAttribute("cart");
        if (item == null) {
            item = new Cart();
            httpSession.setAttribute("cart", item);
        }

        List<Product> productList = item.getProductList();
        List<Integer> quantity = item.getQuantity();

        if (productList == null) {
            productList = new ArrayList<>();
        }
        if (quantity == null) {
            quantity = new ArrayList<>();
        }

        for (int i = 0; i < productList.size(); i++) {
            if (productList.get(i).getId() == productId) {
                quantity.set(i, quantity.get(i) + productQuantity);
                item.setProductList(productList);
                item.setQuantity(quantity);
                cartService.save(item);
                httpSession.setAttribute("cart", item);
                return "redirect:/product_list";

            }
        }

        productList.add(product);
        quantity.add(productQuantity);

        item.setProductList(productList);
        item.setQuantity(quantity);
        
        cartService.save(item);

        httpSession.setAttribute("cart", item);
        return "redirect:/product_list";
    }
}
