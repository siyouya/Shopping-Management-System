package com.etc.entity;
/*
 * ͼ�������
 * ���ͱ��
 * ��������
 */
public class ShopType {
	//����
	private int typeid;
	private String typename;
	//��װ
	
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
