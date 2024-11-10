package com.ischoolbar.programmer.controller.admin;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.LeaveMsg;
import com.ischoolbar.programmer.page.admin.Page;
import com.ischoolbar.programmer.service.admin.LeaveMsgService;

/**
 * 留言控制器
 * @author llq
 *
 */
@RequestMapping("/admin/leave_msg")
@Controller
public class LeaveMsgController {
	
	@Autowired
	private LeaveMsgService leaveMsgService;
	
	/**
	 * 留言列表页面
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(ModelAndView model){
		model.setViewName("leave_msg/list");
		return model;
	}
	
	
	/**
	 * 留言信息编辑
	 * @param newsCategory
	 * @return
	 */
	@RequestMapping(value="/edit",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> edit(LeaveMsg leaveMsg){
		Map<String,String> ret = new HashMap<String, String>();
		if(leaveMsg == null){
			ret.put("type", "error");
			ret.put("msg", "请填写正确的信息！");
			return ret;
		}
		if(StringUtils.isEmpty(leaveMsg.getName())){
			ret.put("type", "error");
			ret.put("msg", "姓名不能为空！");
			return ret;
		}
		if(StringUtils.isEmpty(leaveMsg.getContent())){
			ret.put("type", "error");
			ret.put("msg", "内容不能为空！");
			return ret;
		}
		if(leaveMsgService.edit(leaveMsg) <= 0){
			ret.put("type", "error");
			ret.put("msg", "修改失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "修改成功！");
		return ret;
	}
	
	/**
	 * 删除留言
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> delete(String ids){
		Map<String,String> ret = new HashMap<String, String>();
		if(ids == null){
			ret.put("type", "error");
			ret.put("msg", "请选择要删除的信息！");
			return ret;
		}
		if(ids.contains(",")){
			ids = ids.substring(0,ids.length()-1);
		}
		if(leaveMsgService.delete(ids) <= 0){
			ret.put("type", "error");
			ret.put("msg", "删除失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "删除成功！");
		return ret;
	}
	
	/**
	 * 分页模糊搜索查询列表
	 * @param name
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/list",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> getList(
			@RequestParam(name="name",required=false,defaultValue="") String name,
			@RequestParam(name="content",required=false,defaultValue="") String content,
			Page page
			){
		Map<String,Object> ret = new HashMap<String, Object>();
		Map<String,Object> queryMap = new HashMap<String, Object>();
		queryMap.put("name", name);
		queryMap.put("content", content);
		queryMap.put("offset", page.getOffset());
		queryMap.put("pageSize", page.getRows());
		ret.put("rows", leaveMsgService.findList(queryMap));
		ret.put("total", leaveMsgService.getTotal(queryMap));
		return ret;
	}
}
