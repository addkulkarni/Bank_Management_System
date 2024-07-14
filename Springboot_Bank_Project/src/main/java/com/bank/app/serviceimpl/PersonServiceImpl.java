package com.bank.app.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.app.model.Person;
import com.bank.app.repository.PersonRepositoryI;
import com.bank.app.servicei.PersonServiceI;

@Service
public class PersonServiceImpl implements PersonServiceI
{
	@Autowired
	PersonRepositoryI pri;

	@Override
	public void savedata(Person p)
	{
		pri.save(p);	
	}

	@Override
	public Person getalldata(String username, String password)
	{
		Person p = pri.findAllByUsernameAndPassword(username, password);
		return p;
	}

	@Override
	public Person depositmoney(int pid, int amount, float balance)
	{
		Person p = pri.findById(pid).get();
		p.setBalance(amount+balance);
		pri.save(p);
		return pri.findById(pid).get();
	}

	@Override
	public Person withdrawmoney(int pid, float balance, int amount)
	{
		Person p = pri.findById(pid).get();
		p.setBalance(balance-amount);
		pri.save(p);
		return pri.findById(pid).get();
	}

	@Override
	public Person updatedata(Person p)
	{
		pri.save(p);
		Person per = pri.findById(p.getPid()).get();
		return per;
	}
}









