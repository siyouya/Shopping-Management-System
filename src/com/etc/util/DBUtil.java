package com.etc.util;

import java.sql.*;
import javax.sql.rowset.CachedRowSet;
import com.sun.rowset.*;


public class DBUtil {

	public static final String DRIVER = "com.mysql.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/t_book?characterEncoding=utf8&serverTimezone=UTC";

	public static final String USER = "root";
	public static final String PASSWORD = "root";

	public Connection getCon(){

		Connection con  = null;
		try {
			Class.forName(DRIVER);
			con  = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("爬");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
		
	}
	

	public CachedRowSet Query(String sql,Object ...param){	

	    Connection con  =getCon();

	    PreparedStatement ps = null;

	    ResultSet  rs = null;

	    CachedRowSet crs  =  null;
	    
	    try {
			ps  = con.prepareStatement(sql);

			for(int i =0 ;i<param.length;i++){

				ps.setObject(i+1, param[i]);
			}	
			rs = ps.executeQuery();

			crs = new CachedRowSetImpl();

			crs.populate(rs);		
		} catch (Exception e) {
			// TODO: handle exception
		}	  
		return crs;	
	}


	public int Update(String sql,Object ...param){

		Connection con  =getCon();
		PreparedStatement ps = null;

		int result = 0;
		
		try {
			ps  = con.prepareStatement(sql);
			for(int i =0 ;i<param.length;i++){
				ps.setObject(i+1, param[i]);
			}	

			result  = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return result;
		
	}
	
	

}
