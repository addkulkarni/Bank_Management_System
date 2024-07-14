package com.bank.app.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bank.app.model.Person;

@Repository
public interface PersonRepositoryI extends JpaRepository<Person, Integer>
{

	Person findAllByUsernameAndPassword(String username, String password);

}
