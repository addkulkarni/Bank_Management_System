package com.bank.app.model;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity
public class Person
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int pid;
	private String pname;
	private String address;
	private int age;
	private String email;
	private String gender;
	private long contact;
	private float balance;
	private String username;
	private String password;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date dob;
}
