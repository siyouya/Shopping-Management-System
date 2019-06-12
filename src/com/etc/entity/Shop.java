package com.etc.entity;

public class Shop {

	private int bid;
	private String shopname;
	private  int price;
	private ShopType bt;
	private User fuid;
	private String detail;
	private String picture;
	private String size;

	public User getFuid() {
		return fuid;
	}

	public void setFuid(User fuid) {
		this.fuid = fuid;
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getShopname() {
		return shopname;
	}

	public void setShopname(String shopname) {
		this.shopname = shopname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public ShopType getBt() {
		return bt;
	}

	public void setBt(ShopType bt) {
		this.bt = bt;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	@Override
	public String toString() {
		return "Shop{" +
				"bid=" + bid +
				", shopname='" + shopname + '\'' +
				", price=" + price +
				", bt=" + bt +
				", fuid=" + fuid +
				", detail='" + detail + '\'' +
				", picture='" + picture + '\'' +
				", size='" + size + '\'' +
				'}';
	}

	public Shop() {
		super();
	}

	public Shop(int bid, String shopname, int price, ShopType bt) {
		this.bid = bid;
		this.shopname = shopname;
		this.price = price;
		this.bt = bt;
	}



	public Shop(int bid, String shopname, int price) {
		this.bid = bid;
		this.shopname = shopname;
		this.price = price;
	}

	public Shop(int bid, String shopname, int price, ShopType bt, User fuid, String detail) {
		this.bid = bid;
		this.shopname = shopname;
		this.price = price;
		this.bt = bt;
		this.fuid = fuid;
		this.detail = detail;
	}

	public Shop(int bid, String shopname, int price, ShopType bt, User fuid, String detail, String picture, String size) {
		this.bid = bid;
		this.shopname = shopname;
		this.price = price;
		this.bt = bt;
		this.fuid = fuid;
		this.detail = detail;
		this.picture = picture;
		this.size = size;
	}
}
