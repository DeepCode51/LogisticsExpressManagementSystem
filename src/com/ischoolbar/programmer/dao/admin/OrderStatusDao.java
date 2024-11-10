package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.OrderStatus;

/**
 * ¶©µ¥×´Ì¬Ààdao
 * @author llq
 *
 */
@Repository
public interface OrderStatusDao {
	public int add(OrderStatus orderStatus);
	public List<OrderStatus> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
}
