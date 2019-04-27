package com.etc.entity;
/*
 * 图书的类型
 * 类型编号
 * 类型名称
 */
public class ShopType {
	//属性
	private int typeid;
	private String typename;
	//封装
	
	public int getTypeid() {
		return typeid;
	}
	public void setTypeid(int typeid) {
		this.typeid = typeid;
	}
	public String getTypename() {
		return typename;
	}
	public void setTypename(String typename) {
		this.typename = typename;
	}
	public ShopType() {
		super();
	}
	public ShopType(int typeid, String typename) {
		super();
		this.typeid = typeid;
		this.typename = typename;
	}
	@Override
	public String toString() {
		return "BookType [typeid=" + typeid + ", typename=" + typename + "]";
	}
	
	
	

}
