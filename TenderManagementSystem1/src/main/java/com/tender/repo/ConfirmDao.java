package com.tender.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.tender.beans.Confirm;
import com.tender.beans.Contractor;

public interface ConfirmDao extends JpaRepository<Confirm,Integer>{
	
	public List<Confirm> findByUserId(Integer userId);
}
