package com.example.demo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.model.Cart;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {
    @GetMapping("/cart")
    public String home(Model model, HttpSession httpSession) {
        Cart item = (Cart) httpSession.getAttribute("cart");
        Long total = 0L;

        if (item == null) {
            model.addAttribute("message", "Giỏ hàng đang trống! Bạn hãy thêm hàng vào giỏ rồi quay lại nhé");
            return "message";
        } else {
            if (item.getProductList() != null && item.getQuantity() != null) {
                for (int i = 0; i < item.getProductList().size(); i++) {
                    total += item.getQuantity().get(i) * item.getProductList().get(i).getPrice();
                }
            }
            model.addAttribute("cart", item);
            model.addAttribute("total", "Tổng tiền: " + total.toString() + " VND");
            return "cart";
        }
    }
}
