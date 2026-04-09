package com.shopmilk.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.shopmilk.entities.Product;

@Repository
public interface ProductRepo extends JpaRepository<Product, Integer> {

    // Tìm theo tên chứa chuỗi
    List<Product> findByNameContaining(String q);

    // Tìm theo khoảng giá
    List<Product> findByPriceBetween(long from, long to);

    // Tìm theo category
    List<Product> findByCategoryId(int categoryId);

    // Tìm theo category và khoảng giá
    List<Product> findByCategoryIdAndPriceBetween(int categoryId, long from, long to);

    // Tìm sản phẩm theo tên chính xác (nếu cần)
    Product findByName(String name);

}