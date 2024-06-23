package com.bankmanagement.app.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Card
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cid;
	private String ctype;
	public int getCid()
	{
		return cid;
	}
	public void setCid(int cid)
	{
		this.cid = cid;
	}
	public String getCtype()
	{
		return ctype;
	}
	public void setCtype(String ctype)
	{
		this.ctype = ctype;
	}
	
}
