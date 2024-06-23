package com.bankmanagement.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.bankmanagement.app.model.Card;

@Repository
public interface CardRepository extends JpaRepository<Card, Integer>
{

}
