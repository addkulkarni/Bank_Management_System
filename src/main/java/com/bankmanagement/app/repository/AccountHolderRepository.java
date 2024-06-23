package com.bankmanagement.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bankmanagement.app.model.AccountHolder;

@Repository
public interface AccountHolderRepository extends JpaRepository<AccountHolder, Integer>
{
	List<AccountHolder> findAllByEmailAndPassword(String email, String password);

	AccountHolder findByAccno(int accno);
	
}
