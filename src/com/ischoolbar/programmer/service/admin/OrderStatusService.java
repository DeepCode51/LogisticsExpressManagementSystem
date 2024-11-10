package com.ischoolbar.programmer.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.OrderStatus;

/**
 * ¶©µ¥×´Ì¬½Ó¿Ú
 * @author llq
 *
 */
@Service
public interface OrderStatusService {
	public int add(OrderStatus orderStatus);
	public List<OrderStatus> findList(Map<String, Object> queryMap);
	public int getTotal(Map<String, Object> queryMap);
}
