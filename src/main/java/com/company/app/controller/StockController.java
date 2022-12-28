package com.company.app.controller;

import com.company.app.model.Stock;
import com.company.app.service.StockService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
public class StockController {
    @Autowired
    StockService stockService;

    @GetMapping("/stock")
    public String DisplayStocks(Model model){
        List<Stock> stockList = stockService.findAll();
        model.addAttribute("stocks", stockList);
        return "stock";
    }
    @PostMapping("addStock")
    public String addStock(Stock stockToSave, RedirectAttributes rdtAttribute){
        Object stock = stockService.save(stockToSave);
        if (stock.getClass().equals(String.class)){
            rdtAttribute.addFlashAttribute("error", stock.toString());
            return "redirect:/stock";
        }
        return "redirect:/stock";

    }
}
