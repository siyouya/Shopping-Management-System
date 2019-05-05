package com.etc.dao;
import java.util.ArrayList;

import java.util.List;

import java.io.InputStream;
import java.sql.Blob;
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


			public Shop queryAllShopAndType(int sbid){

				String sql  = "select * from shop where bid=? ";
				CachedRowSet crs   = dbutil.Query(sql,sbid);
				Shop shop =new Shop();
				try {
					while(crs.next()){
						int bid=crs.getInt("bid");
						String shopname  = crs.getString("shopname");
						int price  =crs.getInt("price");
						byte[] content;
						content = crs.getBytes("content");
						//	InputStream in = content.getBinaryStream();
					 	shop  = new Shop(bid,shopname,price,content);
					}
				} catch (Exception e) {
					// TODO: handle exception
				}

						return shop;
			 }

			   public boolean deleteShop(int shopid){

				   String sql  = "DELETE from shop where bid = ? ";
				   int result = 0;
				   result  = dbutil.Update(sql, shopid);

				   return result>0;

			   }


			   public boolean addShop(String shopname, int price,int typeid, int uid,byte[] content){

				   String sql  = "insert into shop VALUES(null,?,?,?,?,null,null,null,?); ";
				   int result = 0;
				   result  = dbutil.Update(sql,shopname,price,typeid,uid,content);

				   return result>0;

			   }
//				public boolean intobob(byte[] content){
//				String sql="INSERT INTO bindata VALUES(null,?);
//					int result = 0;
//					result  = dbutil.Update(sql,content);
//					return result>0;
//				}









}
