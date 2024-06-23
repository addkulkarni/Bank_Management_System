package com.bankmanagement.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bankmanagement.app.model.AccountHolder;
import com.bankmanagement.app.model.Card;
import com.bankmanagement.app.servicei.AccountHolderServiceI;
import com.bankmanagement.app.servicei.CardServiceI;

@Controller
public class HomeController
{
	@Autowired
	AccountHolderServiceI asi;
	@Autowired
	CardServiceI c;
	
	@RequestMapping("/")
	public String prelogin()
	{
		return "login";
	}
	
	@RequestMapping("openreg")
	public String openreg(ModelMap m)
	{
		List<Card> l = c.getAllCards();
		m.put("data", l);
		return "register";
	}
	
	@RequestMapping("register")
	public String passwordSetup(@ModelAttribute AccountHolder ah)
	{
		System.out.println(ah.getId());
		asi.savedata(ah);
		return "login";
	}
	
	@RequestMapping("login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, ModelMap m)
	{
		System.out.println("LOGGED IN");
		System.out.println(email);
		System.out.println(password);
		List<AccountHolder> l = asi.login(email, password);
		if(l.isEmpty())
		{
			return "login";
		}
		else if(l.size()==1){
			System.out.println("SERVICES only 1 returned");
			System.out.println(email);
			System.out.println(password);
			m.put("email", email);
			m.put("password", password);
			return "services";
		}
		else {
			m.put("data", l);
			return "success";
		}
	}
	
	@RequestMapping("edit")
	public String editdata(@RequestParam ("id") int id, ModelMap m)
	{
		AccountHolder ah = asi.getaccount(id);
		m.put("ah", ah);
		return "edit";
	}
	
	@RequestMapping("update")
	public String updatedata(@ModelAttribute AccountHolder ah, ModelMap m)
	{
		List<AccountHolder> l = asi.updatedata(ah);
		m.put("data", l);
		return "success";
	}
	
	@RequestMapping("delete")
	public String deletedata(@RequestParam("id") int id, ModelMap m)
	{
		List<AccountHolder> l = asi.deletedata(id);
		m.put("data", l);
		return "success";
	}
	
	@RequestMapping("checkbalance")
	public String checkbalance(@RequestParam("accno") int accno,@RequestParam("email")String email, @RequestParam("password")String password, ModelMap m)
	{
		System.out.println("In check balance method");
		AccountHolder ah= asi.getbalance(accno);
		if(ah==null)
		{
			m.put("email", email);
			m.put("password", password);
			return "invalidaccno";
		}
		else
		{
			float balance = ah.getBalance();
			m.put("email", email);
			m.put("password", password);
			m.put("balance", balance);
			System.out.println(balance);
			return "balance";
		}
	}
}
