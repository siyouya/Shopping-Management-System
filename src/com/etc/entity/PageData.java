package com.etc.entity;

import java.util.List;

public class PageData {



	private List Data;
	private  Integer pageNo;
	private Integer PageSize;
	private Integer totalCount;
	private Integer totalPage;
	public List getData() {
		return Data;
	}
	public void setData(List data) {
		Data = data;
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageSize() {
		return PageSize;
	}
	public void setPageSize(Integer pageSize) {
		PageSize = pageSize;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}
	public PageData() {
		super();
	}


	public PageData(List data, Integer pageNo, Integer pageSize, Integer totalCount) {
		super();
		Data = data;
		this.pageNo = pageNo;
		PageSize = pageSize;
		this.totalCount = totalCount;
		this.totalPage = totalCount%pageSize==0?totalCount/pageSize:(totalCount/pageSize)+1;
	}




}
