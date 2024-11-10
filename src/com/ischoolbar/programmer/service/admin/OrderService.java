package com.ischoolbar.programmer.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.Order;

/**
 * ¶©µ¥½Ó¿Ú
 * @author llq
 *
 */
@Service
public interface OrderService {
	public int add(Order order);
	public int edit(Order order);
	public List<Order> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
	public Order findBySn(String sn);
}
