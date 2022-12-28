package com.company.app.controller;

import com.company.app.model.Client;
import com.company.app.model.Product;
import com.company.app.service.ClientService;
import com.company.app.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class ProductController {
    @Autowired
    ProductService productService;


}
