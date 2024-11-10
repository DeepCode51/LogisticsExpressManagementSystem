package com.ischoolbar.programmer.service.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.entity.admin.LeaveMsg;

/**
 * 新闻评论接口
 * @author llq
 *
 */
@Service
public interface LeaveMsgService {
	public int add(LeaveMsg leaveMsg);
	public int edit(LeaveMsg leaveMsg);
	public int delete(String ids);
	public List<LeaveMsg> findList(Map<String,Object> queryMap);
	public List<LeaveMsg> findAll();
	public int getTotal(Map<String,Object> queryMap);
}
