package com.ashokit.entity;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name="products_tbl")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer pid;

    private String name;
    private Double price;
    private Integer qty;
}
