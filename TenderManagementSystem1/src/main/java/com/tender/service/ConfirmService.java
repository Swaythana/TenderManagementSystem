package com.tender.service;

import java.util.List;

import com.tender.beans.Confirm;
import com.tender.repo.ConfirmDao;

public interface ConfirmService {
	
	public Confirm registerConfirm(Confirm c);
	
	public List<Confirm>getAllBiddings();
	
	public List<Confirm> findByUserId(Integer userId);

}
