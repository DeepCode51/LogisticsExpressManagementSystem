package com.ischoolbar.programmer.entity.admin;

import java.util.Date;

import org.springframework.stereotype.Component;

/**
 * 订单实体
 * @author llq
 *
 */
@Component
public class Order {
	
	private Long id;
	private String sn;//订单编号
	
	private String sender;//发货人
	private String senderMobile;//发货人手机号
	private String senderTel;//发货人固定电话
	private String senderAddress;//发货人地址
	
	private String reciever;//收件人
	private String recieverMobile;//收货人手机号
	private String recieverTel;//收货人固定电话
	private String recieverAddress;//收货人地址
	
	private String goodsName;//货物名称
	private String goodsPrice;//报价申明
	private String goodsWeight;//货物重量
	private String goodsVolum;//体积
	
	private String remark;//备注
	private Date createTime;//发布时间
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getSenderMobile() {
		return senderMobile;
	}
	public void setSenderMobile(String senderMobile) {
		this.senderMobile = senderMobile;
	}
	public String getSenderTel() {
		return senderTel;
	}
	public void setSenderTel(String senderTel) {
		this.senderTel = senderTel;
	}
	public String getSenderAddress() {
		return senderAddress;
	}
	public void setSenderAddress(String senderAddress) {
		this.senderAddress = senderAddress;
	}
	public String getReciever() {
		return reciever;
	}
	public void setReciever(String reciever) {
		this.reciever = reciever;
	}
	public String getRecieverMobile() {
		return recieverMobile;
	}
	public void setRecieverMobile(String recieverMobile) {
		this.recieverMobile = recieverMobile;
	}
	public String getRecieverTel() {
		return recieverTel;
	}
	public void setRecieverTel(String recieverTel) {
		this.recieverTel = recieverTel;
	}
	public String getRecieverAddress() {
		return recieverAddress;
	}
	public void setRecieverAddress(String recieverAddress) {
		this.recieverAddress = recieverAddress;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public String getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(String goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public String getGoodsWeight() {
		return goodsWeight;
	}
	public void setGoodsWeight(String goodsWeight) {
		this.goodsWeight = goodsWeight;
	}
	public String getGoodsVolum() {
		return goodsVolum;
	}
	public void setGoodsVolum(String goodsVolum) {
		this.goodsVolum = goodsVolum;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getSn() {
		return sn;
	}
	public void setSn(String sn) {
		this.sn = sn;
	}
	
	
	
	
}
