package com.ischoolbar.programmer.entity.admin;

import org.springframework.stereotype.Component;

/**
 * 新闻分类实体
 * @author llq
 *
 */
@Component
public class NewsCategory {
	private Long id;
	private String name;
	private int sort;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	
}
