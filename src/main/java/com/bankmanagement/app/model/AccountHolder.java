package com.bankmanagement.app.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

@Entity
public class AccountHolder
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int accno;
	private String fname;
	private String lname;
	private long mobno;
	private String pan;
	private String email;
	private String password;
	private String gender;
	private float balance;
	private int age;
	private String acctype;
	
	public int getId()
	{
		return id;
	}
	public void setId(int id)
	{
		this.id = id;
	}
	public int getAccno()
	{
		return accno;
	}
	public void setAccno(int accno)
	{
		this.accno = accno;
	}
	public String getFname()
	{
		return fname;
	}
	public void setFname(String fname)
	{
		this.fname = fname;
	}
	public String getLname()
	{
		return lname;
	}
	public void setLname(String lname)
	{
		this.lname = lname;
	}
	public String getPassword()
	{
		return password;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public long getMobno()
	{
		return mobno;
	}
	public void setMobno(long mobno)
	{
		this.mobno = mobno;
	}
	public String getPan()
	{
		return pan;
	}
	public void setPan(String pan)
	{
		this.pan = pan;
	}
	public String getEmail()
	{
		return email;
	}
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getGender()
	{
		return gender;
	}
	public void setGender(String gender)
	{
		this.gender = gender;
	}
	public float getBalance()
	{
		return balance;
	}
	public void setBalance(float balance)
	{
		this.balance = balance;
	}
	public int getAge()
	{
		return age;
	}
	public void setAge(int age)
	{
		this.age = age;
	}
	public String getAcctype()
	{
		return acctype;
	}
	public void setAcctype(String acctype)
	{
		this.acctype = acctype;
	}
}
