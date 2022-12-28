package com.company.app.model;

import com.company.app.enumeration.Categorie;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonSetter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Product implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(nullable = false)
    private Long id;
    private String ref;
    private String name;
    private Categorie category;
    private String price;
    private String description;
    private int quantity;
    @ManyToOne(fetch = FetchType.LAZY)
    private Stock stock;
    @OneToMany(mappedBy = "product")
    private List<CommandItem> commandItemList = new ArrayList <> (  );

    public Product() {
    }

    public Product(String ref, String name, Categorie category, String price, String description, int quantity, List<CommandItem> commandItemList) {
        this.ref = ref;
        this.name = name;
        this.category = category;
        this.price = price;
        this.description = description;
        this.quantity = quantity;
        this.commandItemList = commandItemList;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getRef() {
        return ref;
    }

    public void setRef(String ref) {
        this.ref = ref;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Categorie getCategorie() {
        return category;
    }

    public void setCategorie(Categorie category) {
        this.category = category;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public List<CommandItem> getCommandItemList() {
        return commandItemList;
    }

    public void setCommandItemList(List<CommandItem> commandItemList) {
        this.commandItemList = commandItemList;
    }

    public void addCommandItem(CommandItem commandItem){
        this.commandItemList.add(commandItem);
    }
    @JsonIgnore
    public Stock getStock() {
        return stock;
    }
    @JsonSetter
    public void setStock(Stock stock) {
        this.stock = stock;
    }
}
