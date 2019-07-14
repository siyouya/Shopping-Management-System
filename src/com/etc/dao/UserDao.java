package com.etc.dao;
import java.util.ArrayList;
import java.util.List;
import javax.sql.rowset.CachedRowSet;
import com.etc.entity.*;
import com.etc.util.DBUtil;
public class UserDao {

			DBUtil  dbutil  = new DBUtil();



		public List<User> queryUserbyid(int userid){
			List<User> list  = new ArrayList<User>();
			String sql  = "select *   from user where   uid=?";
			CachedRowSet crs   = dbutil.Query(sql,userid);
			try {
				while(crs.next()){
					String tel = crs.getString("tel");
					int age = crs.getInt("age");
					String name = crs.getString("name");
					String password = crs.getString("password");
					String address = crs.getString("address");
					User user = new User(userid , name, password, age, tel, address);
					list.add(user);
				}
			} catch (Exception e) {
				// TODO:
			}
			return list;
		}




			public boolean addUser(String name ,String password ,String tel,int age,String address ){
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



		public boolean changeuser(String name,String password,int age,String tel,String address,int userid){
				String sql  = "Update  user  SET name=? ,password =? ,age=?,tel=? ,address=? where uid = ? ";
			   int result = 0;
			   result  = dbutil.Update(sql,name,password,age,tel,address,userid);
			   return result>0;
			   }


			   public User queryAllUserAndType4(int userid) {
				   String sql = "select * from user  where uid=? ";
				   CachedRowSet crs = dbutil.Query(sql,userid);
				   User user = new User();
				   try {
					   while (crs.next()) {
						   String tel = crs.getString("tel");
						   int age = crs.getInt("age");
						   String name = crs.getString("name");
						   String password = crs.getString("password");
						   String address = crs.getString("address");
						   user = new User(userid , name, password, age, tel, address);
					   }
				   } catch (Exception e) {
					   // TODO:
				   }

				   return user;

			   }







}
