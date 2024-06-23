package com.bankmanagement.app.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bankmanagement.app.model.Card;
import com.bankmanagement.app.repository.CardRepository;
import com.bankmanagement.app.servicei.CardServiceI;

@Service
public class CardServiceImpl implements CardServiceI
{
	@Autowired
	CardRepository cr;
	
	@Override
	public List<Card> getAllCards()
	{
		return cr.findAll();
	}

}
