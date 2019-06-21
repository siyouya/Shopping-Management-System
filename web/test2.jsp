<%@ page contentType="text/html;charset=gb2312"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*"%>
<%@ page import="com.etc.entity.Shop"%>
<%@ page import="java.io.*"%>
<%@ page import="java.nio.*"%>
<%@ page import="com.etc.dao.ShopDao" %>
<%@ page import="javax.sql.rowset.CachedRowSet" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<body>
  <form action="">
      <select name="typid">
          <option value="1">生活类</option>
          <option value="2">学生类</option>
          <option value="3">办公类</option>
      </select>

      /*public Shop queryAllShop(int typid){

      String sql  = "select * from shop,shoptype where shop.typid =shoptype.typid  and typid = ？; ";
      CachedRowSet crs = dbutil.Query(sql,typid);
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
     */
  </form>

</body>

</html>
