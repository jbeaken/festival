package org.party.festival.controller.bean;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

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

	private String getShaText(String salt) {
		return orderid + barclaysStatus + salt;
	}

	public boolean checkSha(String salt) throws NoSuchAlgorithmException {
		String thisSha = sha512(getShaText( salt ));
		if(thisSha.equals(sha)) return true;
		return false;
	}
	
	protected String sha512(String input) throws NoSuchAlgorithmException {
		MessageDigest mDigest = MessageDigest.getInstance("SHA-512");
		byte[] result = mDigest.digest(input.getBytes());
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < result.length; i++) {
			sb.append(Integer.toString((result[i] & 0xff) + 0x100, 16).substring(1));
		}
		return sb.toString();
	}	
}
