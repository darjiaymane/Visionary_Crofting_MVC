package com.company.app.service.implementation;

import com.company.app.enumeration.Categorie;
import com.company.app.model.Product;
import com.company.app.model.Stock;
import com.company.app.repository.ProductRepository;
import com.company.app.service.ProductService;
import com.company.app.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
@Service
public class ProductServiceImp  implements ProductService{
    @Autowired
    ProductRepository productRepository;
    @Autowired
    StockService stockService;

    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Product findById(Long aLong) {
        return productRepository.getOne(aLong);
    }
    @Override
    public Object save(Product product, Long stockId) {
        Stock stock = this.stockService.findById(stockId);
        if (stock == null) {
            return "Stock not found";
        }
        product.setStock(stock);
        if(this.findByRef(product.getRef()) != null) {
            return "Ref already exist";
        }
        return productRepository.save(product);
    }

    @Override
    public Product findByRef(String ref) {
        return null;
    }
}
