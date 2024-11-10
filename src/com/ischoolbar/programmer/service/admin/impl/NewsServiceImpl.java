package com.ischoolbar.programmer.service.admin.impl;
/**
 * 新闻service实现类
 */
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ischoolbar.programmer.dao.admin.NewsDao;
import com.ischoolbar.programmer.entity.admin.News;
import com.ischoolbar.programmer.service.admin.NewsService;
@Service
public class NewsServiceImpl implements NewsService {

	@Autowired
	private NewsDao newsDao;

	@Override
	public int add(News news) {
		// TODO Auto-generated method stub
		return newsDao.add(news);
	}

	@Override
	public int edit(News news) {
		// TODO Auto-generated method stub
		return newsDao.edit(news);
	}

	@Override
	public int delete(Long id) {
		// TODO Auto-generated method stub
		return newsDao.delete(id);
	}

	@Override
	public List<News> findList(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return newsDao.findList(queryMap);
	}

	@Override
	public int getTotal(Map<String, Object> queryMap) {
		// TODO Auto-generated method stub
		return newsDao.getTotal(queryMap);
	}

	@Override
	public News find(Long id) {
		// TODO Auto-generated method stub
		return newsDao.find(id);
	}

	@Override
	public int updateCommentNumber(Long id) {
		// TODO Auto-generated method stub
		return newsDao.updateCommentNumber(id);
	}

	@Override
	public int updateViewNumber(Long id) {
		// TODO Auto-generated method stub
		return newsDao.updateViewNumber(id);
	}

	@Override
	public List<News> findLastCommentList(int pageSize) {
		// TODO Auto-generated method stub
		return newsDao.findLastCommentList(pageSize);
	}
	
	

}
