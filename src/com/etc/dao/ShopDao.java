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
							shop  = new Shop(bid, shopname,price);
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
					return shop;
				}


			public List<Shop> queryAllShopAndType(int userid){

				List<Shop> list  = new ArrayList<Shop>();
				String sql  = "select *"
						+ "from shop,shoptype where shop.typeid = shoptype.typeid  and fuid=? ";
				CachedRowSet crs   = dbutil.Query(sql,userid);
				try {
					while(crs.next()){
						int bid=crs.getInt("bid");
						String shopname  = crs.getString("shopname");
						int price  =crs.getInt("price");
						Shop shop  = new Shop(bid, shopname,price);
						list.add(shop);

					}
				} catch (Exception e) {
					// TODO: handle exception
				}

						return list;
			 }

			   public boolean deleteShop(int shopid){

				   String sql  = "DELETE from shop where bid = ? ";
				   int result = 0;
				   result  = dbutil.Update(sql, shopid);

				   return result>0;

			   }


			   public boolean addShop(String shopname, int price,int typeid, int uid){

				   String sql  = "insert into shop VALUES(null,?,?,?,?); ";
				   int result = 0;
				   result  = dbutil.Update(sql,shopname,price,typeid,uid);

				   return result>0;

			   }






}
