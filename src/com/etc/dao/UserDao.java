package com.etc.dao;
import java.util.ArrayList;
import java.util.List;
import javax.sql.rowset.CachedRowSet;
import com.etc.entity.*;
import com.etc.util.DBUtil;
public class UserDao {

			DBUtil  dbutil  = new DBUtil();

		public List<User> queryAllUserAndType(){
			List<User> list  = new ArrayList<User>();
			String sql  = "select user.uid ,user.name,user.password,user.age,user.tel,user.address  "
					+ "from user  ";
			CachedRowSet crs   = dbutil.Query(sql);
			try {
				while(crs.next()){
					int uid = crs.getInt("uid");
					int tel = crs.getInt("tel");
					int age = crs.getInt("age");
					String name  = crs.getString("name"); 
					String password=crs.getString("password");
					String address  = crs.getString("address"); 

					User user  = new User(uid,name,password,age,tel,address);
					list.add(user);
					
				}
			} catch (Exception e) {
				// TODO:
			}
					return list;
		 }
		public User queryUser(int userid){
			String sql  = "select * from seller,user where user.uid=seller.uid and user.uid=?";
			CachedRowSet crs   = dbutil.Query(sql,userid);
			User user =new User();
			try {
				while(crs.next()){
					int uid = userid;
					int tel = crs.getInt("tel");
					int age = crs.getInt("age");
					String name  = crs.getString("name");
					String address  = crs.getString("address");
					String password =crs.getString("password");
					user  = new User(uid,name,password,age,tel,address);
				}
			} catch (Exception e) {
				// TODO:
			}
			return user;
		}
		public Seller findbid(String  Sid){
			String sql  = "select * from  seller where sid=? ";
			CachedRowSet crs   = dbutil.Query(sql,Sid);
			Seller seller =new Seller();
			try {
				while(crs.next()){
					int sid =crs.getInt("sid");
					int uid = crs.getInt("uid");
					String shopname=crs.getString("shopname");
					int price=crs.getInt("price");
					int bid =crs.getInt("bid");
					seller=new Seller(sid,uid,shopname,price,bid );
				}
			} catch (Exception e) {
				// TODO:
			}
			return seller;
		}


		public List<User> queryUserAndType(int userid){
			List<User> list  = new ArrayList<User>();
			String sql  = "select user.uid ,user.name,user.password,user.age,user.tel,user.address   "
					+ "from user where   uid=?";
			CachedRowSet crs   = dbutil.Query(sql,userid);

			try {
				while(crs.next()){
					int uid = userid;
					int tel = crs.getInt("tel");
					int age=0;
					if (crs.getInt("age")==0){
						age=0;
					}else {
						age = crs.getInt("age");
					}
					String name  = crs.getString("name");
					String password=crs.getString("password");
					String address=null;
					if (crs.getString("address").equals(null)){
						 address="空";
					}else {
						address = crs.getString("address");
					}


					User user  = new User(uid,name,password,age,tel,address);
					list.add(user);

				}
			} catch (Exception e) {
				// TODO:
			}
			return list;
		}



		public boolean deleteShop(String sid){

			String sql  = "DELETE from seller where sid = ? ";
			int result = 0;
			result  = dbutil.Update(sql, sid);
			return result>0;

		}






		   public boolean deleteUser(String userid){
			   String sql  = "DELETE from user  where uid = ?";
			   int result = 0;
			   result  = dbutil.Update(sql, userid);
			   return result>0;
			   
		   }

		   

			public boolean addUserez(String name ,String password ,int tel,int age,String address ){
				String sql  = "insert into user VALUES(null,?,?,?,?,?);";
				int result = 0;
				result  = dbutil.Update(sql, name,password,tel,age ,address);
				return result>0;

			}


			public int checkLogin(String name, String password)
			{
				String sql="select *from user where name=? and password=?";

				CachedRowSet crs=null;

				crs= dbutil.Query(sql, name,password);

				int result=0;
				try {
					if(crs.next()){
						result=crs.getInt("uid");
					}
				} catch (Exception e) {
					// TODO: handle exception
				}
				return result;
			}



		public boolean changeuser(String name,String password,int age,int tel,String address,int userid){
				String sql  = "Update  user  SET name=? ,password =? ,age=?,tel=? ,address=? where uid = ? ";
			   int result = 0;
			   result  = dbutil.Update(sql,name,password,age,tel,address,userid);
			   return result>0;
			   }

			   public User queryAllUserAndType4(int userid) {
				   String sql = "select user.uid ,user.name,user.password,user.age,user.tel,user.address  "
						   + "from user ";
				   CachedRowSet crs = dbutil.Query(sql);
				   User user = new User();
				   try {
					   while (crs.next()) {
						   int uid = userid;
						   int tel = crs.getInt("tel");
						   int age = crs.getInt("age");
						   String name = crs.getString("name");
						   String password = crs.getString("password");
						   String address = crs.getString("address");

						   user = new User(uid, name, password, age, tel, address);
					   }
				   } catch (Exception e) {
					   // TODO:
				   }

				   return user;

			   }

		public boolean seller(int uid  ,String  shopname ,int price ,int bid){
			String sql  = "insert into seller VALUES(null,?,?,?,?) ";
			int result = 0;
			result  = dbutil.Update(sql, uid,  shopname, price,bid);
			return result>0;
		}


		public List<Seller> queryseller(int userid) {
			List<Seller> list  = new ArrayList<Seller>();
			String sql  = "select *   "
					+ "from seller where  uid= ?  ";
			CachedRowSet crs = dbutil.Query(sql,userid);
			try {
				while (crs.next()) {
					int sid=crs.getInt("sid");
					int uid = userid;
					String shopname=crs.getString("shopname");
					int price =crs.getInt("price");
					Shop bid =new Shop();
					bid.setBid(crs.getInt("bid"));
					Seller seller = new Seller(sid,uid,shopname,price,bid);
					list.add(seller);
				}
			} catch (Exception e) {
				// TODO:
			}
			return list;

		}



}
