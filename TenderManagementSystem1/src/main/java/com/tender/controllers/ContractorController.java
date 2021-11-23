package com.tender.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tender.beans.Login;
import com.tender.beans.Confirm;
import com.tender.beans.Contractor;
import com.tender.beans.Tender;
import com.tender.beans.UserTender;
import com.tender.exceptions.TenderNotFoundException;
import com.tender.repo.ConfirmDao;
import com.tender.repo.ContractorDao;
import com.tender.repo.TenderDao;
import com.tender.service.ConfirmService;
import com.tender.service.ContractorService;
import com.tender.service.TenderService;
import com.tender.service.UserTenderService;

@Controller
public class ContractorController {
	
	@Autowired
	private TenderDao tenDao;
	
	@Autowired
	private TenderService tenService;
	
	@Autowired
	private ContractorDao cDao;
	
	@Autowired
	private ConfirmService csDao;
	
	@Autowired
	private ContractorService conserv;
	
	@Autowired
	private UserTenderService userserv;
	
	private Contractor opt;
	
	List<Confirm> l=new ArrayList();
	
	@GetMapping("/conhome")
	public ModelAndView homeePageLauncher() {
		
		//Contractor opt=conserv.findByConId(conId);
		
		System.out.println("List con"+opt);
		return new ModelAndView("contractorHome", "contractorData", opt);
		

	}

	
	@GetMapping("/generateTender/{conId}")
	public String tenderPageLauncher(@PathVariable Integer conId,Model m) {
		
		Contractor c=conserv.findByConId(conId);
		
		System.out.print(c);
		
		Tender t=new Tender();
		
		t.setConId(c.getConId());
		t.setConName(c.getConName());
		
		m.addAttribute("tenData", t);
		
		return "tenderRegister";
	}
	
	
	@PostMapping("/generateTender/registertender")
	public ModelAndView doInsertTender(@Valid @ModelAttribute("tenData") Tender ten, BindingResult br) {

		if (br.hasErrors()) {

			return new ModelAndView("tenderRegister");
		}
		Tender savedTen = tenDao.save(ten);

		return new ModelAndView("registerTenderSuccess", "ten", savedTen);

	}
	
	
	
	@GetMapping("/viewContractorTender/{conId}")

	public ModelAndView viewContractorTenderHandler(@PathVariable Integer conId) throws TenderNotFoundException {

		List<Tender> result = tenService.findByConId(conId);

		ModelAndView mv = new ModelAndView("TenderList");

		mv.addObject("tenderData", result);

		return mv;
	}
	
	@GetMapping("/confirmTender/{userId}/{tenderId}")

	public ModelAndView confirmTenderHandler(@PathVariable Integer userId,@PathVariable Integer tenderId) {
		
		UserTender u=userserv.findByUserIdAndTenderId(userId, tenderId);
		
		Confirm c=new Confirm();
		
		c.setTenderId(u.getTenderId());
		c.setTenderName(u.getTenderName());
		c.setUserId(u.getUserId());
		c.setUserName(u.getUserName());
		c.setBidPrice(u.getBidPrice());
		
		Confirm saved=csDao.registerConfirm(c);
		
		l.add(saved);
		
		System.out.println(saved);

		ModelAndView mv = new ModelAndView("confirmBiddingList");

		mv.addObject("confirmBiddingData", l);

		return mv;
	}
	
	@GetMapping("/allBiddings/{conId}")

	public ModelAndView viewallbiddingsHandler(@PathVariable Integer conId){

		List<UserTender> res=userserv.findByConId(conId);

		ModelAndView mv = new ModelAndView("allBiddingsList");

		mv.addObject("biddingList", res);

		return mv;
	}
	

}
