package com.company.app.repository;

import com.company.app.enumeration.Categorie;
import com.company.app.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    Product findByRef(String ref);
    Product deleteByRef(String ref);
}
