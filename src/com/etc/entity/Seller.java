package com.etc.entity;

public class Seller {

      private int sid;
      private int uid;
      private String shopname ;
      private int price;
      private Shop sst;
      private int bid;

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public Shop getSst() {
        return sst;
    }


    public void setSst(Shop sst) {
        this.sst = sst;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getShopname() {
        return shopname;
    }

    public void setShopname(String shopname) {
        this.shopname = shopname;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "seller{" +
                "sid=" + sid +
                ", uid=" + uid +
                ", shopname='" + shopname + '\'' +
                ", price=" + price +
                '}';
    }

    public Seller()

    {
        super();
    }

//    public Seller( int uid, Shop sst, String shopname, int price) {
//        this.sst=sst;
//        this.uid = uid;
//        this.shopname = shopname;
//        this.price = price;
//    }
    public Seller(int sid,int uid ,String shopname, int price,Shop sst) {
        this.sid=sid;
        this.sst=sst;
        this.uid = uid;
        this.shopname = shopname;
        this.price = price;
    }
    public Seller(int sid,int uid ,String shopname, int price,int bid) {
        this.sid=sid;
        this.bid=bid;
        this.uid = uid;
        this.shopname = shopname;
        this.price = price;
    }


}
