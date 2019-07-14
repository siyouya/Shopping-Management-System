package com.etc.dao;
import java.util.ArrayList;
import java.util.List;
import javax.sql.rowset.CachedRowSet;
import com.etc.entity.*;
import com.etc.util.DBUtil;
public class OrderDao {

    DBUtil  dbutil  = new DBUtil();

    public boolean addorder(int  uid ,int bid,int state){
        String sql  = "insert into `order` VALUES(null,?,?,?)";
        int result = 0;
        result  = dbutil.Update(sql,uid,bid,state);
        return result>0;
    }

    public boolean deleteOrder(int shopid){

        String sql  = "DELETE from `order` where sid=? ";
        int result = 0;
        result  = dbutil.Update(sql, shopid);

        return result>0;

    }
    public boolean confirmorder(int sid){
        String sql  = "Update  `order`  SET stateid=3 where sid = ? ";
        int result = 0;
        result  = dbutil.Update(sql,sid);
        return result>0;
    }


    public Order findorder(int bid) {
        String sql  = "select *  from `order` where  sid=?  ";
        CachedRowSet crs = dbutil.Query(sql,bid);
        Order order=new Order();
        try {
            while (crs.next()) {
                int did=crs.getInt("did");
                int sid=crs.getInt("sid");
                int uid=crs.getInt("uid");
                int state=crs.getInt("stateid");
                order =new Order(did,uid,sid,state);
            }
        } catch (Exception e) {
            // TODO:
        }
        return order;

    }
    public List<Order> findOrder(int userid) {
        List<Order> list  = new ArrayList<Order>();
        String sql  = "select * from `order` where uid=? ";
        CachedRowSet crs = dbutil.Query(sql,userid);
        try {
            while (crs.next()) {
                int did=crs.getInt("did");
                int uid=userid;
                int bid  =crs.getInt("sid");
                int state  =crs.getInt("stateid");
                Order order = new Order(did,uid,bid,state);
                list.add(order);
            }
        } catch (Exception e) {
            // TODO:
        }
        return list;

    }





}
