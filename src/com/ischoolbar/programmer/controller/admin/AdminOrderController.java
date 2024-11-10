package com.ischoolbar.programmer.controller.admin;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.Order;
import com.ischoolbar.programmer.entity.admin.OrderStatus;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.admin.OrderService;
import com.ischoolbar.programmer.service.admin.OrderStatusService;

/**
 * 订单管理控制器
 * @author llq
 *
 */
@RequestMapping("/admin/order")
@Controller
public class AdminOrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private OrderStatusService orderStatusService;
	
	/**
	 * 订单列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.setViewName("order/list");
		return model;
	}
	
	/**
	 * 获取订单列表
	 * @param page
	 * @param content
	 * @param roleId
	 * @param sex
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getList(Page page,
			@RequestParam(name="sender",required=false,defaultValue="") String sender,
			@RequestParam(name="senderMobile",required=false,defaultValue="") String senderMobile,
			@RequestParam(name="reciever",required=false,defaultValue="") String reciever,
			@RequestParam(name="recieverMobile",required=false,defaultValue="") String recieverMobile
			){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("sender", sender);
		queryMap.put("senderMobile", senderMobile);
		queryMap.put("reciever", reciever);
		queryMap.put("recieverMobile", recieverMobile);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", orderService.findList(queryMap));
		ret.put("total", orderService.getTotal(queryMap));
		return ret;
	}
	
	/**
	 * 获取订单状态列表
	 * @param page
	 * @param orderSn
	 * @return
	 */
	@RequestMapping(value="/status_list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getStatusList(Page page,
			@RequestParam(name="orderSn",required=false,defaultValue="") String orderSn
			){
		Map<String, Object> ret = new HashMap<String, Object>();
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("orderSn", orderSn);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", orderStatusService.findList(queryMap));
		ret.put("total", orderStatusService.getTotal(queryMap));
		return ret;
	}
	
	/**
	 * 添加订单
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(Order order){
		Map<String, String> ret = new HashMap<String, String>();
		if(order == null){
			ret.put("type", "error");
			ret.put("msg", "请填写正确的订单信息！");
			return ret;
		}
		order.setSn(System.currentTimeMillis()+"");
		order.setCreateTime(new Date());
		if(orderService.add(order) <= 0){
			ret.put("type", "error");
			ret.put("msg", "订单添加失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "订单添加成功！");
		return ret;
	}
	
	/**
	 * 编辑订单
	 * @param order
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> edit(Order order){
		Map<String, String> ret = new HashMap<String, String>();
		if(order == null){
			ret.put("type", "error");
			ret.put("msg", "请填写正确的订单信息！");
			return ret;
		}
		if(orderService.edit(order) <= 0){
			ret.put("type", "error");
			ret.put("msg", "订单编辑失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "订单编辑成功！");
		return ret;
	}
	
	/**
	 * 添加订单状态信息
	 * @param orderStatus
	 * @return
	 */
	@RequestMapping(value="/add_status",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addStatus(OrderStatus orderStatus){
		Map<String, String> ret = new HashMap<String, String>();
		if(orderStatus == null){
			ret.put("type", "error");
			ret.put("msg", "请填写正确的订单状态信息！");
			return ret;
		}
		orderStatus.setCreateTime(new Date());
		if(orderStatusService.add(orderStatus) <= 0){
			ret.put("type", "error");
			ret.put("msg", "订单状态添加失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "订单状态添加成功！");
		return ret;
	}
	
}
