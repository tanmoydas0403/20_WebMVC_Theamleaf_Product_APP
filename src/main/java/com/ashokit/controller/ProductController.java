package com.ashokit.controller;

import com.ashokit.entity.Product;
import com.ashokit.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private ProductRepository repo;

    @GetMapping("/")
    public String loadIndex(Model model){
        model.addAttribute("p", new Product());
        return "index";
    }

    @PostMapping("/product")
    public String handleSave(@ModelAttribute("p") Product p, Model model){
        Product save = repo.save(p);
        if(save.getPid()!=null){
            model.addAttribute("msg", "Product saved successfully");
        }
        return "index";
    }

    @GetMapping("/products")
    public String loadProduct(Model model){
        model.addAttribute("products", repo.findAll());
        List<Product> all = repo.findAll();
        System.out.println(all);
        return "data";
    }

}