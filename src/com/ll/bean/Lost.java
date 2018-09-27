package com.ll.bean;

import java.util.List;

public class Lost {

	private Integer lostId;
	private String lostDescribe;
	private String lostTime;
	private String lostHead;
	private String lostSite1;
	private String lostSite2;
	private String cids;

	private List<Type> types;

	public String getCids() {
		return cids;
	}

	public void setCids(String cids) {
		this.cids = cids;
	}

	public List<Type> getTypes() {
		return types;
	}

	public void setTypes(List<Type> types) {
		this.types = types;
	}

	public Lost() {
		super();
	}

	public Integer getLostId() {
		return lostId;
	}

	public void setLostId(Integer lostId) {
		this.lostId = lostId;
	}

	public String getLostDescribe() {
		return lostDescribe;
	}

	public void setLostDescribe(String lostDescribe) {
		this.lostDescribe = lostDescribe;
	}

	public String getLostTime() {
		return lostTime;
	}

	public void setLostTime(String lostTime) {
		this.lostTime = lostTime;
	}

	public String getLostHead() {
		return lostHead;
	}

	public void setLostHead(String lostHead) {
		this.lostHead = lostHead;
	}

	public String getLostSite1() {
		return lostSite1;
	}

	public void setLostSite1(String lostSite1) {
		this.lostSite1 = lostSite1;
	}

	public String getLostSite2() {
		return lostSite2;
	}

	public void setLostSite2(String lostSite2) {
		this.lostSite2 = lostSite2;
	}

	@Override
	public String toString() {
		return "Lost [lostId=" + lostId + ", lostDescribe=" + lostDescribe + ", lostTime=" + lostTime + ", lostHead="
				+ lostHead + ", lostSite1=" + lostSite1 + ", lostSite2=" + lostSite2 + ", cids=" + cids + ", type="
				+ types + "]";
	}

}
