package com.bankmanagement.app.servicei;

import java.util.List;

import com.bankmanagement.app.model.AccountHolder;
import com.bankmanagement.app.model.Card;

public interface AccountHolderServiceI
{

	void savedata(AccountHolder ah);
	List<AccountHolder> login(String email, String password);
	AccountHolder getaccount(int id);
	List<AccountHolder> updatedata(AccountHolder ah);
	List<AccountHolder> deletedata(int id);
	AccountHolder getbalance(int accno);
}
