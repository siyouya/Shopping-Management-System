package com.etc.util;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import javax.sql.rowset.CachedRowSet;
import com.etc.entity.PageData;
import com.sun.rowset.*;
import java.lang.reflect.Field;
public class PageDBUtil {
    //1.加载并注册驱动程序

    public static final String DRIVER = "com.mysql.jdbc.Driver";
    public static final String URL = "jdbc:mysql://localhost:3306/t_book?characterEncoding=utf-8"; //数据库的编码格式utf-8
    //用户和密码
    public static final String USER = "root";
    public static final String PASSWORD = "root";


    //创建一个数据连接方法 getCon()，返回一个连接对象 Connection
    public static Connection getCon(){

        //创建Connection 对象
        Connection con  = null;
        try {
            Class.forName(DRIVER);
            //alt+/
            con  = DriverManager.getConnection(URL, USER, PASSWORD);
            //打印连接成功
            System.out.println("数据连接成功");

        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return con;

    }


    //更新操作  修改 删除 添加
    public int Update(String sql,Object ...param){

        //连接数据库
        //创建Connection 对象
        Connection con  =getCon();
        //创建PreparedStatement对象
        PreparedStatement ps = null;

        //更新的结果result
        int result = 0;

        try {

            ps  = con.prepareStatement(sql);
            //for循环遍历sql的参数
            for(int i =0 ;i<param.length;i++){
                //补全sql的参数
                ps.setObject(i+1, param[i]);
            }

            //执行更新操作
            result  = ps.executeUpdate();
        } catch (Exception e) {
            // TODO: handle exception
        }


        return result;

    }



    /*
     * sql 语句
     * param  可变参数
     *
     * java的反射机制
     *
     */
    //查询功能
    public static Object Select(String sql,Class cla,Object ...param){
        //连接数据库
        //创建Connection 对象
        Connection con  =getCon();
        //创建PreparedStatement对象
        PreparedStatement ps = null;
        //创建ResultSet对象
        ResultSet  rs = null;
        // 缓冲结果集  要求JDK>1.7
        CachedRowSet crs  =  null;
        //创建一个列表
        List<Object> list  = new ArrayList<Object>();
        try {
            ps  = con.prepareStatement(sql);


            //for循环遍历sql的参数
            for(int i =0 ;i<param.length;i++){
                //补全sql的参数

                ps.setObject(i+1, param[i]);
            }

            rs = ps.executeQuery();//调用查询方法，将返回值赋值给rs.
            //实例化CachedRowSet 对象
            crs = new CachedRowSetImpl();
            //将crs 与 rs 相关联
            crs.populate(rs);
            //新增语句
            //java的反射
            /*
             *在这里做具体的赋值操作
             *
             */
            //1.获取成员的属性 import java.lang.reflect.Field
            Field[] fs  = cla.getDeclaredFields();
            Object obj = null;
            while(crs.next()){
                //2.获取实例对象
                obj  = cla.newInstance();

                //3.for遍历每个属性
                for(Field f:fs){

                    //4.开启访问属性的权限
                    f.setAccessible(true);
                    //5.获取属性名称
                    String key  = f.getName();
                    //6.获取属性值  通过key 取值
                    Object value  = crs.getObject(key);
                    //7.为每个属性赋值
                    f.set(obj, value);


                }
                list.add(obj);


            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return list;
    }


    //分页查询

	/*
	 *
	 分页的数据 data
	当前页 pageNo
	每页显示的条数  pageSize
	总条数  totalCount
	总页数  totalPage  =   totalCount% pageSize==0 ？ totalCount/ pageSize：（totalCount/ pageSize）+1

	 */


    public  static   PageData getpage(String sql,Integer pageNo,Integer pageSize,Class cla,Object ... param ){

        //sql  select * from tbl_book
        //查询数据库的总记录数  select count(*) from (select* from tbl_book) t
        String selsql  = "select count(*) from ("+sql+") t";

        //获取总记录数
        Integer totalCount = getCount(selsql, param);


        //得到起始位置 limit   0,3  3,3    6,3

        int start  = (pageNo-1)*pageSize;

        //分页查询的sql 语句 select * from tbl_book limit  0,3
        String limitsql  = sql +" limit "+start+","+pageSize;
        System.out.print(limitsql);

        //创建一个list
        List list = (List) Select(limitsql, cla, param);
        System.out.print(" 222 "+list.size());

        //实例化一个PageData 对象

        PageData pagedata  = new  PageData(list,  pageNo, pageSize,totalCount);



        return pagedata;

    }


    //查询总记录数
    public static int getCount(String sql,Object ...param){
        //1.连接数据库
        Connection con  = getCon();
        //创建PreparedStatement对象
        PreparedStatement ps = null;
        //创建ResultSet对象
        ResultSet  rs = null;
        // 缓冲结果集  要求JDK>1.7
        CachedRowSet crs  =  null;

        //创建一个列表
        // List<Object> list  = new ArrayList<Object>();
        try {
            ps  = con.prepareStatement(sql);
            //for循环遍历sql的参数
            for(int i =0 ;i<param.length;i++){
                //补全sql的参数
                ps.setObject(i+1, param[i]);
            }
            rs = ps.executeQuery();//调用查询方法，将返回值赋值给rs.
            //实例化CachedRowSet 对象
            crs = new CachedRowSetImpl();
            //将crs 与 rs 相关联
            crs.populate(rs);

            if(crs.next()){
                return crs.getInt(1);
            }


        } catch (Exception e) {
            // TODO: handle exception
        }


        return 0;

    }






}
