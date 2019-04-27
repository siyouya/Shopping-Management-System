package com.etc.entity;
import com.etc.entity.*;
public class User {
	private int uid;
	private String name;
	private String password;
	private int age;
	private int tel;
	private Shop st;
	private String address;
    private Seller seller;


	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getTel() {
		return tel;
	}

	public void setTel(int tel) {
		this.tel = tel;
	}

	public Shop getSt() {
		return st;
	}

	public void setSt(Shop st) {
		this.st = st;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Seller getSeller() {
		return seller;
	}

	public void setSeller(Seller seller) {
		this.seller = seller;
	}

	@Override
	public String toString() {
		return "User{" +
				"uid=" + uid +
				", name='" + name + '\'' +
				", password='" + password + '\'' +
				", age=" + age +
				", tel=" + tel +
				", st=" + st +
				", address='" + address + '\'' +
				", seller=" + seller +
				'}';
	}

	public User()
	{
		super();
	}


	public User(int uid, String name, String password, int age, int tel, Shop st, String address) {
		this.uid = uid;
		this.name = name;
		this.password = password;
		this.age = age;
		this.tel = tel;
		this.st = st;
		this.address = address;
	}


	public User(int uid, String password, int tel) {
		this.uid = uid;
		this.password = password;
		this.tel = tel;
	}

	public User(int uid, String name, String password, int age, int tel, String address) {
		this.uid = uid;
		this.name = name;
		this.password = password;
		this.age = age;
		this.tel = tel;
		this.address = address;
	}

	public User(int uid, String name, String password, int age, int tel,  String address, Seller seller) {
		this.uid = uid;
		this.name = name;
		this.password = password;
		this.age = age;
		this.tel = tel;
		this.address = address;
		this.seller = seller;
	}
}
