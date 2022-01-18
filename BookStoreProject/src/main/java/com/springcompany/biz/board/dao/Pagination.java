package com.springcompany.biz.board.dao;

public class Pagination {

	private int pageSize = 10;
	private int rangSize = 10; 
	private int curPage = 1; 
	private int curRange = 1; 
	private int listCnt; 
	private int pageCnt; 
	private int rangCnt; 
	private int startPage = 1; 
	private int endPage = 1; 
	private int startIndex = 0; 
	private int prevPage; 
	private int nextPage; 

	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getRangSize() {
		return rangSize;
	}
	public void setRangSize(int rangSize) {
		this.rangSize = rangSize;
	}
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getCurRange() {
		return curRange;
	}
	public void setCurRange(int curRange) {
		this.curRange = curRange;
	}
	public int getListCnt() {
		return listCnt;
	}
	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}
	public int getPageCnt() {
		return pageCnt;
	}
	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}
	public int getRangCnt() {
		return rangCnt;
	}
	public void setRangCnt(int rangCnt) {
		this.rangCnt = rangCnt;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}	
}
