package com.ischoolbar.programmer.controller.home;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ischoolbar.programmer.entity.admin.LeaveMsg;
import com.ischoolbar.programmer.entity.admin.News;
import com.ischoolbar.programmer.service.admin.LeaveMsgService;
import com.ischoolbar.programmer.service.admin.NewsCategoryService;
import com.ischoolbar.programmer.service.admin.NewsService;

/**
 * 前台页面首页控制器
 * @author llq
 *
 */
@RequestMapping("/index")
@Controller
public class IndexController {
	
	@Autowired
	private NewsCategoryService newsCategoryService;
	
	@Autowired
	private NewsService newsService;
	@Autowired
	private LeaveMsgService leaveMsgService;
	
	/**
	 * 系统首页
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView index(ModelAndView model){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("offset", 0);
		queryMap.put("pageSize", 7);
		model.addObject("newsList", newsService.findList(queryMap));
		model.addObject("indexActive", "active");
		model.setViewName("home/index/index");
		return model;
	}
	
	/**
	 * 关于我们
	 * @return
	 */
	@RequestMapping(value="/about_us")
	public ModelAndView aboutUs(ModelAndView model){
		model.addObject("aboutusActive", "active");
		model.setViewName("home/index/about_us");
		return model;
	}
	
	
	/**
	 * 业务范围
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/buss")
	public ModelAndView buss(ModelAndView model){
		model.addObject("bussActive", "active");
		model.setViewName("home/index/buss");
		return model;
	}
	
	/**
	 * 新闻列表
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/news_list")
	public ModelAndView newsList(ModelAndView model){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("categoryId", 5);
		model.addObject("newsActive", "active");
		model.addObject("newsList", newsService.findList(queryMap));
		model.setViewName("home/index/news_list");
		return model;
	}
	
	/**
	 * 查看新闻详情
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/news_detail",method=RequestMethod.GET)
	public ModelAndView detail(ModelAndView model,Long id){
		News news = newsService.find(id);
		model.addObject("news", news);
		model.addObject("newsActive", "active");
		model.setViewName("home/index/news_detail");
		//查看数加1
		newsService.updateViewNumber(id);
		return model;
	}
	
	/**
	 * 联系我们
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/contact_us")
	public ModelAndView contactUs(ModelAndView model){
		model.addObject("contactusActive", "active");
		model.setViewName("home/index/contact_us");
		return model;
	}
	
	/**
	 * 公司荣誉
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/honor")
	public ModelAndView honor(ModelAndView model){
		model.addObject("aboutusActive", "active");
		model.setViewName("home/index/honor");
		return model;
	}
	
	/**
	 * 物流空运
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/buss1")
	public ModelAndView buss1(ModelAndView model){
		model.addObject("bussActive", "active");
		model.setViewName("home/index/buss1");
		return model;
	}
	
	/**
	 * 限时到达
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/buss2")
	public ModelAndView buss2(ModelAndView model){
		model.addObject("bussActive", "active");
		model.setViewName("home/index/buss2");
		return model;
	}
	
	/**
	 * 物流普运
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/buss3")
	public ModelAndView buss3(ModelAndView model){
		model.addObject("bussActive", "active");
		model.setViewName("home/index/buss3");
		return model;
	}
	
	
	/**
	 * 城际快线
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/buss4")
	public ModelAndView buss4(ModelAndView model){
		model.addObject("bussActive", "active");
		model.setViewName("home/index/buss4");
		return model;
	}
	
	/**
	 * 合作共赢
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/buss5")
	public ModelAndView buss5(ModelAndView model){
		model.addObject("bussActive", "active");
		model.setViewName("home/index/buss5");
		return model;
	}
	
	/**
	 * 常见问题
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/problem")
	public ModelAndView problem(ModelAndView model){
		Map<String, Object> queryMap = new HashMap<String, Object>();
		queryMap.put("categoryId", 10);
		model.addObject("newsActive", "active");
		model.addObject("newsList", newsService.findList(queryMap));
		model.setViewName("home/index/problem");
		return model;
	}
	
	/**
	 * 留言添加
	 * @param newsCategory
	 * @return
	 */
	@RequestMapping(value="/add_leave_msg",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> add(LeaveMsg leaveMsg){
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
		if(StringUtils.isEmpty(leaveMsg.getTel())){
			ret.put("type", "error");
			ret.put("msg", "联系电话不能为空！");
			return ret;
		}
		if(StringUtils.isEmpty(leaveMsg.getContent())){
			ret.put("type", "error");
			ret.put("msg", "内容不能为空！");
			return ret;
		}
		leaveMsg.setCreateTime(new Date());
		if(leaveMsgService.add(leaveMsg) <= 0){
			ret.put("type", "error");
			ret.put("msg", "添加失败，请联系管理员！");
			return ret;
		}
		ret.put("type", "success");
		ret.put("msg", "添加成功！");
		return ret;
	}
	
}
