package com.etc.dao;

import com.etc.entity.PageData;
import com.etc.entity.Shop;
import com.etc.util.PageDBUtil;

public class PageshopDao {

    PageDBUtil pageDBUtil =new PageDBUtil();


    public PageData queryshopbypage(int PageNo, int PageSize){


        String sql=" select *from  shoptype  ";

        PageData pagedata =pageDBUtil.getpage(sql,PageNo,PageSize,Shop.class);


        return pagedata;







    }




}
