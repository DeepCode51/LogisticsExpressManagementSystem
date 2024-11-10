package com.ischoolbar.programmer.controller.home;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Order;
import com.ischoolbar.programmer.entity.admin.OrderStatus;
import com.ischoolbar.programmer.service.admin.OrderService;
import com.ischoolbar.programmer.service.admin.OrderStatusService;

/**
 * 前台新闻控制器
 * @author llq
 *
 */
@RequestMapping("/order")
@Controller
public class HomeOrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private OrderStatusService orderStatusService;
	
	/**
	 * 在线下单
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/online_order")
	public ModelAndView onlineOrder(ModelAndView model){
		model.addObject("orderActive", "active");
		model.setViewName("home/order/online_order");
		return model;
	}
	
	/**
	 * 查询订单
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/query_order")
	public ModelAndView queryOrder(ModelAndView model,String sn){
		if(!StringUtils.isEmpty(sn)){
			Map<String, Object> queryMap = new HashMap<String, Object>();
			queryMap.put("orderSn", sn);
			List<OrderStatus> findList = orderStatusService.findList(queryMap);
			model.addObject("orderStatusList", findList);
			Order findBySn = orderService.findBySn(sn);
			String msg = "您的订单已提交成功，等待系统分配。";
			if(findBySn == null){
				msg = "该单号不存在！";
			}
			model.addObject("msg", msg);
		}
		model.addObject("orderActive", "active");
		model.setViewName("home/order/query_order");
		model.addObject("sn",sn);
		return model;
	}
	
	/**
	 *提交订单信息
	 * @return
	 */
	@RequestMapping(value="/add_order",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> addOrder(Order order){
		Map<String, Object> ret = new HashMap<String, Object>();
		if(order == null){
			ret.put("type", "error");
			ret.put("msg", "请填写正确的订单信息");
			return ret;
		}
		String sn = System.currentTimeMillis()+"";
		order.setSn(sn);
		order.setCreateTime(new Date());
		int add = orderService.add(order);
		if(add < 0){
			ret.put("type", "error");
			ret.put("msg", "订单提交失败，请联系管理员");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "add success");
		ret.put("sn", sn);
		return ret;
	}
	
	
	
}
