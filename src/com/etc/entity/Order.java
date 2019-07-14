package com.etc.entity;

public class Order {
    private int did;
    private int uid;
    private int sid;
    private int State;

    public int getDid() {
        return did;
    }

    public void setDid(int did) {
        this.did = did;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public int getState() {
        return State;
    }

    public void setState(int state) {
        State = state;
    }

    public Order() {
        super();
    }

    public Order(int did, int uid, int sid, int state) {
        this.did = did;
        this.uid = uid;
        this.sid = sid;
        this.State = state;
    }
}
