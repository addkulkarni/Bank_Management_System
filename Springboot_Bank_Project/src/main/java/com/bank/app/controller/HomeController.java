package com.bank.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bank.app.model.Person;
import com.bank.app.servicei.PersonServiceI;

@Controller
public class HomeController
{
	@Autowired
	PersonServiceI psi;
	
	@RequestMapping("/")
	public String prelogin()
	{
		return "login";
	}
	
	@RequestMapping("openreg")
	public String openreg()
	{
		return "register";
	}
	
	@RequestMapping("savedata")
	public String register(@ModelAttribute Person p)
	{
		p.setBalance(1000);
		psi.savedata(p);
		System.out.println(p.getDob());
		return "login";
	}
	
	@RequestMapping("login")
	public String login(@RequestParam("username")String username, @RequestParam("password")String password, ModelMap m)
	{
		Person p = psi.getalldata(username, password);
		m.put("p", p);
		return "success";
	}
	
	@RequestMapping("deposit")
	public String opendeposit(@ModelAttribute Person p, ModelMap m)
	{
		m.put("p", p);
		return "deposit";
	}
	
	@RequestMapping("depositmoney")
	public String depositmoney(@RequestParam("pid")int pid,@RequestParam("amount")int amount,@RequestParam("balance")float balance, ModelMap m)
	{
		Person p = psi.depositmoney(pid, amount, balance);
		m.put("p", p);
		return "success";
	}
	
	@RequestMapping("withdraw")
	public String openwithdraw(@ModelAttribute Person p, ModelMap m)
	{
		m.put("p", p);
		return "withdraw";
	}
	
	@RequestMapping("withdrawmoney")
	public String withdrawmoney(@RequestParam("pid")int pid,@RequestParam("balance")float balance,@RequestParam("amount")int amount,ModelMap m)
	{
		Person p = psi.withdrawmoney(pid,balance,amount);
		m.put("p", p);
		return "success";
	}
	
	@RequestMapping("openupdate")
	public String openupdate(@ModelAttribute Person p, ModelMap m)
	{
		System.out.println("Open update");
		m.put("p", p);
		return "edit";
	}
	
	@RequestMapping("update")
	public String updatedata(@ModelAttribute Person p, ModelMap m)
	{
		Person per = psi.updatedata(p);
		m.put("p", per);
		return "success";
	}
}

