package com.tender.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tender.beans.Confirm;
import com.tender.repo.ConfirmDao;

@Service
public class ConfirmServiceImpl implements ConfirmService{
	
	@Autowired
	private ConfirmDao cDao;

	@Override
	public Confirm registerConfirm(Confirm c) {
		// TODO Auto-generated method stub
		return cDao.save(c);
	}

	@Override
	public List<Confirm> getAllBiddings() {
		// TODO Auto-generated method stub
		return cDao.findAll();
	}

	@Override
	public List<Confirm> findByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return cDao.findByUserId(userId);
	}

	

}
