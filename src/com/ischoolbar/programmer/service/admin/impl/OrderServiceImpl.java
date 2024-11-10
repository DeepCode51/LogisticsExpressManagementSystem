package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.OrderDao;
import com.ischoolbar.programmer.entity.admin.Order;
import com.ischoolbar.programmer.service.admin.OrderService;
@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderDao;

	@Override
	public int add(Order order) {
		// TODO Auto-generated method stub
		return orderDao.add(order);
	}

	@Override
	public int edit(Order order) {
		// TODO Auto-generated method stub
		return orderDao.edit(order);
	}

	@Override
	public List<Order> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return orderDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return orderDao.getTotal(queryMap);
	}

	@Override
	public Order findBySn(String sn) {
		// TODO Auto-generated method stub
		return orderDao.findBySn(sn);
	}

	
	

}
