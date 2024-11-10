package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.Order;

/**
 * ∂©µ•¿‡dao
 * @author llq
 *
 */
@Repository
public interface OrderDao {
	public int add(Order order);
	public int edit(Order order);
	public List<Order> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
	public Order findBySn(String sn);
}
