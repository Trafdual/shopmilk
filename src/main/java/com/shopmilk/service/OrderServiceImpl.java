package com.shopmilk.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shopmilk.entities.Order;
import com.shopmilk.repository.OrderRepo;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderRepo orderRepo;

	@Override
	public Iterable<Order> findAll() {
		// TODO Auto-generated method stub
		return orderRepo.findAll();
	}

	@Override
	public Order findById(int id) {
		return orderRepo.findById(id).orElse(null);
	}

	@Override
	public void save(Order order) {
		// TODO Auto-generated method stub
		orderRepo.save(order);
	}

	@Override
	public void update(Order order) {
		// TODO Auto-generated method stub
		orderRepo.save(order);
	}

	@Override
	public List<Order> getNewOrder() {
		return orderRepo.findByStatus(false);
	}

	@Override
	public List<Order> getCheckedOrder() {
		return orderRepo.findByStatus(true);
	}

}
