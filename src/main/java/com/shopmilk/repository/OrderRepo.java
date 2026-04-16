package com.shopmilk.repository;

import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.shopmilk.entities.Order;

public interface OrderRepo extends CrudRepository<Order, Integer> {
    List<Order> findByStatus(boolean status);
}
