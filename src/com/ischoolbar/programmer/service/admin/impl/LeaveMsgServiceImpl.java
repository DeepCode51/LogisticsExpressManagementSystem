package com.ischoolbar.programmer.service.admin.impl;
/**
 * ¡Ù—‘service µœ÷¿‡
 */
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.LeaveMsgDao;
import com.ischoolbar.programmer.entity.admin.LeaveMsg;
import com.ischoolbar.programmer.service.admin.LeaveMsgService;
@Service
public class LeaveMsgServiceImpl implements LeaveMsgService {

	@Autowired
	private LeaveMsgDao leaveMsgDao;

	@Override
	public int add(LeaveMsg comment) {
		// TODO Auto-generated method stub
		return leaveMsgDao.add(comment);
	}

	@Override
	public int edit(LeaveMsg comment) {
		// TODO Auto-generated method stub
		return leaveMsgDao.edit(comment);
	}

	@Override
	public int delete(String ids) {
		// TODO Auto-generated method stub
		return leaveMsgDao.delete(ids);
	}

	@Override
	public List<LeaveMsg> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return leaveMsgDao.findList(queryMap);
	}

	@Override
	public List<LeaveMsg> findAll() {
		// TODO Auto-generated method stub
		return leaveMsgDao.findAll();
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return leaveMsgDao.getTotal(queryMap);
	}
	
	

}
