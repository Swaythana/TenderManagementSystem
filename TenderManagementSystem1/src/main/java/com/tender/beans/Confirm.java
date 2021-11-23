package com.tender.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Confirm {
	
	@Id
	private Integer tenderId;
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer confirmId;
	private String tenderName;
	private Integer userId;
	private String userName;
	private Integer bidPrice;
	
	public Confirm() {
		// TODO Auto-generated constructor stub
	}

	public Integer getConfirmId() {
		return confirmId;
	}

	public void setConfirmId(Integer confirmId) {
		this.confirmId = confirmId;
	}

	public Integer getTenderId() {
		return tenderId;
	}

	public void setTenderId(Integer tenderId) {
		this.tenderId = tenderId;
	}

	public String getTenderName() {
		return tenderName;
	}

	public void setTenderName(String tenderName) {
		this.tenderName = tenderName;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getBidPrice() {
		return bidPrice;
	}

	public void setBidPrice(Integer bidPrice) {
		this.bidPrice = bidPrice;
	}

	public Confirm(Integer confirmId, Integer tenderId, String tenderName, Integer userId, String userName,
			Integer bidPrice) {
		super();
		this.confirmId = confirmId;
		this.tenderId = tenderId;
		this.tenderName = tenderName;
		this.userId = userId;
		this.userName = userName;
		this.bidPrice = bidPrice;
	}

	@Override
	public String toString() {
		return "Confirm [confirmId=" + confirmId + ", tenderId=" + tenderId + ", tenderName=" + tenderName + ", userId="
				+ userId + ", userName=" + userName + ", bidPrice=" + bidPrice + "]";
	}
	
	

}
