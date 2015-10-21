package app.accounting.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import app.accounting.dao.BalanceSheetDao;
import app.accounting.domain.BalanceSheet;



@Controller
public class BalanceSheetController {
	@Autowired
	private BalanceSheetDao balanceSheetDao;
	@RequestMapping(method=RequestMethod.GET, value="/balancesheet")
	public ModelAndView mainPage(ModelMap model){
		
		return new ModelAndView("balancesheet");
	}
	@RequestMapping(method=RequestMethod.GET, value="/main")
	public ModelAndView firstmainPage(ModelMap model){
		
		return new ModelAndView("main");
	}
	@RequestMapping(method=RequestMethod.GET, value="/balanceresult")
	public ModelAndView resultsPage(ModelMap model){
		
		return new ModelAndView("balanceresult");
	}
	
	@RequestMapping(method=RequestMethod.GET, value ="/searchbalancesheet")
	public ModelAndView balanceSheetView(ModelMap model){
		
		return new ModelAndView("searchbalancesheet","command", new BalanceSheet());
		
	}
	@RequestMapping(method=RequestMethod.POST, value ="/searchbalancesheet")
	public ModelAndView searchBalanceSheet(@ModelAttribute("balancesheet") BalanceSheet bs,
	BindingResult bindingResult,ModelMap model){
		List <BalanceSheet> balancesheet = null;
		balancesheet = balanceSheetDao.viewBalanceSheet(bs.getId());
		model.addAttribute("balancesheet",balancesheet);
		return new ModelAndView("balanceresult","command", balancesheet);
		
	}
	@RequestMapping(method=RequestMethod.POST, value="/balancesheet")
	public ModelAndView insertBalanceSheet( @ModelAttribute("balancesheet") BalanceSheet balancesheet,
			BindingResult bindingResult,ModelMap model){
		    balanceSheetDao.insertData(balancesheet);
			return new ModelAndView("balancesheet", "command", balancesheet);
		
	}
}
