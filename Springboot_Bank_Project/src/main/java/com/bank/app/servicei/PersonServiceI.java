package com.bank.app.servicei;

import java.util.List;

import com.bank.app.model.Person;

public interface PersonServiceI
{

	void savedata(Person p);

	Person getalldata(String username, String password);

	Person depositmoney(int pid, int amount, float balance);

	Person withdrawmoney(int pid, float balance, int amount);

	Person updatedata(Person p);

	

	

}
