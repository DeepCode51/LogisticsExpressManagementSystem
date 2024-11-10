package com.ischoolbar.programmer.dao.admin;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ischoolbar.programmer.entity.admin.LeaveMsg;

/**
 * ĞÂÎÅÆÀÂÛdao
 * @author llq
 *
 */
@Repository
public interface LeaveMsgDao {
	public int add(LeaveMsg comment);
	public int edit(LeaveMsg comment);
	public int delete(String ids);
	public List<LeaveMsg> findList(Map<String,Object> queryMap);
	public List<LeaveMsg> findAll();
	public int getTotal(Map<String,Object> queryMap);
}
