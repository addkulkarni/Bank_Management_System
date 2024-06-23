package com.bankmanagement.app.serviceimpl;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bankmanagement.app.model.AccountHolder;
import com.bankmanagement.app.model.Card;
import com.bankmanagement.app.repository.AccountHolderRepository;
import com.bankmanagement.app.servicei.AccountHolderServiceI;

@Service
public class AccountHolderServiceImpl implements AccountHolderServiceI
{
	@Autowired
	AccountHolderRepository ar;
	
	@Override
	public void savedata(AccountHolder ah)
	{
		Random r = new Random();
		int accno = r.nextInt(10000, 99999);
		System.out.println(accno);
		ah.setBalance(10);
		ah.setAccno(accno);
		ar.save(ah);
		
	}

	@Override
	public List<AccountHolder> login(String email , String password)
	{
		if(email.equals("admin@g")&&password.equals("admin"))
		{
			return ar.findAll();
		}
		else
		{
			return ar.findAllByEmailAndPassword(email,password);
		}
		
	}

	@Override
	public AccountHolder getaccount(int id)
	{
		return ar.findById(id).get();
	}

	@Override
	public List<AccountHolder> updatedata(AccountHolder ah)
	{
		ar.save(ah);
		return ar.findAll();
	}

	@Override
	public List<AccountHolder> deletedata(int id)
	{
		ar.deleteById(id);
		return ar.findAll();
	}

	@Override
	public AccountHolder getbalance(int accno)
	{
		AccountHolder ah = ar.findByAccno(accno);
		return ah;
	}
}
