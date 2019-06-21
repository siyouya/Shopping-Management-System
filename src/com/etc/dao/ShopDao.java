package com.etc.dao;
import java.util.ArrayList;

import java.util.List;

import javax.sql.rowset.CachedRowSet;

import com.etc.entity.Shop;

import com.etc.util.DBUtil;

public class ShopDao {

	        DBUtil  dbutil  = new DBUtil();
	
			public Shop queryAllShop(int userid){

					String sql  = "select * from shop where fuid =? ";
					CachedRowSet crs = dbutil.Query(sql,userid);
					Shop shop =new Shop();
					try {
						while(crs.next()){
							int bid = crs.getInt("bid");
							String shopname  = crs.getString("shopname");
							int price   =crs.getInt("price");
							int state   =crs.getInt("state");
							shop  = new Shop(bid,shopname,price,state);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return shop;
				}


			public Shop queryidShop(int bid){

				String sql  = "select * from shop where bid=? ";
				CachedRowSet crs   = dbutil.Query(sql,bid);
				Shop shop =new Shop();
				try {
					while(crs.next()){
						String shopname  = crs.getString("shopname");
						int price  =crs.getInt("price");
						String picture =crs.getString("picture");
						String size=crs.getString("size");
						String detail=crs.getString("detail");
					 	shop  = new Shop(bid,shopname,price,picture,detail,size);
					}
				} catch (Exception e) {
					// TODO: handle exception
				}

						return shop;
			 }
			public List<Shop> queryShop() {
				List<Shop> list  = new ArrayList<Shop>();
				String sql  = "select * from shop ";
				CachedRowSet crs = dbutil.Query(sql);
				try {
					while (crs.next()) {
						int bid=crs.getInt("bid");
						String shopname  = crs.getString("shopname");
						int price  =crs.getInt("price");
						String picture= crs.getString("picture");
						int state=crs.getInt("state");
						Shop shop = new Shop(bid,shopname,price,picture,state);
						list.add(shop);
					}
				} catch (Exception e) {
					// TODO:
				}
				return list;

			}
	public boolean changstate(int bid){
		String sql  = "Update  shop  SET state=1 where bid = ? ";
		int result = 0;
		result  = dbutil.Update(sql,bid);
		return result>0;
	}

	public boolean delorder(int bid){
		String sql  = "Update  shop  SET state=0 where bid = ? ";
		int result = 0;
		result  = dbutil.Update(sql,bid);
		return result>0;
	}

	public boolean confirmorder(int bid){
		String sql  = "Update  shop  SET state=3 where bid = ? ";
		int result = 0;
		result  = dbutil.Update(sql,bid);
		return result>0;
	}

	public List<Shop> querytypeShop(int  typeid) {
		List<Shop> list  = new ArrayList<Shop>();
		String sql  = "select * from shop  where typeid =? ";
		CachedRowSet crs = dbutil.Query(sql,typeid);
		try {
			while (crs.next()) {
				int bid=crs.getInt("bid");
				String shopname  = crs.getString("shopname");
				int price  =crs.getInt("price");
				String picture= crs.getString("picture");
				int state=crs.getInt("state");
				Shop shop = new Shop(bid,shopname,price,picture,state);
				list.add(shop);
			}
		} catch (Exception e) {
			// TODO:
		}
		return list;

	}




			   public boolean deleteShop(int shopid){

				   String sql  = "DELETE from shop where bid = ? ";
				   int result = 0;
				   result  = dbutil.Update(sql, shopid);

				   return result>0;

			   }


			   public boolean addShop(String shopname, int price,int typeid,int uid,String detail,String picture,String size){
				   int state=0;
				   String sql  = "insert into shop VALUES(null,?,?,?,?,?,?,?,?); ";
				   int result = 0;
				   result  = dbutil.Update(sql,shopname,price,typeid,uid,detail,picture,size,state);

				   return result>0;

			   }
	public List<Shop> stateshop(int uid){

		//步骤1：创建一个列表对象
		List<Shop> list  = new ArrayList<Shop>();
		//sql语句
		String sql  = "select * from shop  where fuid=?";
		CachedRowSet crs   = dbutil.Query(sql,uid);


		try {
			while(crs.next()){
				int bid = crs.getInt("bid");
				String shopname  = crs.getString("shopname");
				int price   =crs.getInt("price");
				int state=crs.getInt("state");
				Shop shop  = new Shop(bid, shopname,price,state);

				list.add(shop);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		//步骤4:返回列表list
		return list;
	}









	public List<Shop> queryAllshopbyprice(String typeid ,String lowprice ,String highprice){

		//步骤1：创建一个列表对象
		List<Shop> list  = new ArrayList<Shop>();
		//sql语句
		String sql  = "select * from shop  where typeid = ? and  price between ?  and  ? ";
		CachedRowSet crs   = dbutil.Query(sql,typeid,lowprice,highprice);


		try {
			while(crs.next()){
				int bid = crs.getInt("bid");
				String shopname  = crs.getString("shopname");
				int price   =crs.getInt("price");

				Shop shop  = new Shop(bid, shopname,price);

				list.add(shop);

			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		//步骤4:返回列表list
		return list;
	}








	public List<Shop> queryAllshopLikeName(String likeshopname){   /*List<Book> 泛型*/

		//步骤1：创建一个列表对象
		List<Shop> list  = new ArrayList<Shop>();
		//sql语句
		String sql  = "select * from shop  where shopname like   ?   ";
		CachedRowSet crs   = dbutil.Query(sql,"%"+likeshopname+"%");
		Shop shop=new Shop();
		try {
			while(crs.next()){
				int bid=crs.getInt("bid");
				String shopname  = crs.getString("shopname");
				int price  =crs.getInt("price");
				String picture= crs.getString("picture");
				int state=crs.getInt("state");
				 shop = new Shop(bid,shopname,price,picture,state);
				list.add(shop);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		//步骤4:返回列表list
		return list;
	}

}
