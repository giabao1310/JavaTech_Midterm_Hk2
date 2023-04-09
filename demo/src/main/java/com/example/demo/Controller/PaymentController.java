package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Cart;
import com.example.demo.model.Receipt;
import com.example.demo.service.CartService;
import com.example.demo.service.ReceiptService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {
    @Autowired
    ReceiptService receiptService;
    
    @Autowired
    CartService cartService;

    @GetMapping("/payment")
    public String home(Model model, HttpSession httpSession) {
        Cart item = (Cart) httpSession.getAttribute("cart");
        Long total = 0L;

        for (int i = 0; i < item.getProductList().size(); i++) {
            total += item.getQuantity().get(i) * item.getProductList().get(i).getPrice();
        }

        model.addAttribute("total", total + " VND");
        return "payment";
    }

    @PostMapping("/payment")
    public String getData(@RequestParam String username, @RequestParam String email, @RequestParam String address,
            HttpSession httpSession) {
        Cart cart = (Cart) httpSession.getAttribute("cart");

        Receipt receipt = new Receipt();

        receipt.setAddress(address);
        receipt.setEmail(email);
        receipt.setUsername(username);

        receipt.setProductList(cart.getProductList());    
        receipt.setQuantity(cart.getQuantity());

        receiptService.addReceipt(receipt);
        cartService.remove(cart);
        httpSession.setAttribute("cart", new Cart());
        return "redirect:/product_list";
    }
}
