package com.company.app.service;

import com.company.app.model.Product;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface ProductService {
     Product findByRef(String ref);
     List<Product> findAll();

     Product findById(Long aLong);

     Object save(Product product, Long stockId);

}
