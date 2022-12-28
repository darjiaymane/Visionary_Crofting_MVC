package com.company.app.service;

import com.company.app.model.Stock;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface StockService {
    Stock findByName(String name);
    List<Stock> findAll();
    Object save(Stock stock);
    Stock findById(Long id);
}
