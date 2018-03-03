package org.swp.marxism.controller.bean;

public class Feedback {
	
	private String orderid;
	
	private String name;
	
	private String barclaysStatus;
	
	private String amount;
	
	private String sha;

	public String getOrderid() {
		return orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBarclaysStatus() {
		return barclaysStatus;
	}

	public void setBarclaysStatus(String barclaysStatus) {
		this.barclaysStatus = barclaysStatus;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}


	public String getSha() {
		return sha;
	}

	public void setSha(String sha) {
		this.sha = sha;
	}

	@Override
	public String toString() {
		return "Feedback [orderid=" + orderid + ", name=" + name + ", barclaysStatus=" + barclaysStatus + ", amount=" + amount + ", sha=" + sha + "]";
	}
}
