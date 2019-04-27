package com.etc.util;

import java.sql.*;
import javax.sql.rowset.CachedRowSet;
import com.sun.rowset.*;
/*
 * ���ݿ����ӵĹ�����
 */

public class DBUtil {
	
	//1.���ز�ע����������
	public static final String DRIVER = "com.mysql.jdbc.Driver";
	public static final String URL = "jdbc:mysql://localhost:3306/t_book?characterEncoding=utf8&serverTimezone=UTC";
	//�û�������
	public static final String USER = "root";
	public static final String PASSWORD = "root";
	
	//2.����Connection ����
	
	//����һ���������ӷ��� getCon()������һ�����Ӷ��� Connection
	public Connection getCon(){
		
		//����Connection ����
		Connection con  = null;
		try {
			Class.forName(DRIVER);
			//alt+/
			con  = DriverManager.getConnection(URL, USER, PASSWORD);
			//��ӡ���ӳɹ�
			System.out.println("�������ӳɹ�");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return con;
		
	}
	
	/*
	 * sql ���
	 * param  �ɱ����
	 * 
	 */
	//��ѯ����
	public CachedRowSet Query(String sql,Object ...param){	
		//�������ݿ�
		//����Connection ����
	    Connection con  =getCon();
	    //����PreparedStatement����
	    PreparedStatement ps = null;
	    //����ResultSet����
	    ResultSet  rs = null;
	    // ��������  Ҫ��JDK>1.7
	    CachedRowSet crs  =  null;
	    
	    try {
			ps  = con.prepareStatement(sql);
			//forѭ������sql�Ĳ���
			for(int i =0 ;i<param.length;i++){
				//��ȫsql�Ĳ���
				ps.setObject(i+1, param[i]);
			}	
			rs = ps.executeQuery();//���ò�ѯ������������ֵ��ֵ��rs.
			//ʵ����CachedRowSet ����
			crs = new CachedRowSetImpl();
			//��crs �� rs �����
			crs.populate(rs);		
		} catch (Exception e) {
			// TODO: handle exception
		}	  
		return crs;	
	}


	
	//���²���  �޸� ɾ�� ���
	public int Update(String sql,Object ...param){
		
		//�������ݿ�
		//����Connection ����
		Connection con  =getCon();
		//����PreparedStatement����
		PreparedStatement ps = null;
		
		//���µĽ��result
		int result = 0;
		
		try {
			ps  = con.prepareStatement(sql);
			//forѭ������sql�Ĳ���
			for(int i =0 ;i<param.length;i++){
				//��ȫsql�Ĳ���
				ps.setObject(i+1, param[i]);
			}	
			
			//ִ�и��²���
			result  = ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		
		return result;
		
	}
	
	

}
