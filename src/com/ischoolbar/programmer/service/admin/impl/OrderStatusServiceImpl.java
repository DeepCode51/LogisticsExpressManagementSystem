package com.ischoolbar.programmer.service.admin.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.OrderStatusDao;
import com.ischoolbar.programmer.entity.admin.OrderStatus;
import com.ischoolbar.programmer.service.admin.OrderStatusService;
@Service
public class OrderStatusServiceImpl implements OrderStatusService {

	@Autowired
	private OrderStatusDao orderStatusDao;

	@Override
	public int add(OrderStatus orderStatus) {
		// TODO Auto-generated method stub
		return orderStatusDao.add(orderStatus);
	}

	@Override
	public List<OrderStatus> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return orderStatusDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return orderStatusDao.getTotal(queryMap);
	}

	

	
	

}
