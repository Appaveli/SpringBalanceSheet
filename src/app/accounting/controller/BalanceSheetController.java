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
	public ModelAndView insertBalanceSheet( @ModelAttribute("balancesheet") BalanceSheet bs,
			BindingResult bindingResult,ModelMap model){
		BalanceSheet balancesheet = new BalanceSheet();;
	
		double cash = bs.getCash();
		double accountsreceivable = bs.getAccountsReceivable();
		double prepaid = bs.getPrepaidExpenses();
		double inventory = bs.getInventory();
		double totalcurrentliabilities = cash + accountsreceivable+prepaid+inventory;
		double property = bs.getProperty();
		double accumdepre = bs.getAccumDepre();
		double netfixedassets = property + accumdepre;
		double totalassets = totalcurrentliabilities + netfixedassets;
		double accountspayable = bs.getAccountsPayable();
		double accuredexpenses = bs.getAccuredExpenses();
		double portiondebt = bs.getPortionDebt();
		double taxpayable = bs.getTaxPayable();
		double currentliabilities = accountspayable + accuredexpenses + portiondebt + taxpayable;
		double capitalstock = bs.getCapitalStock();
		double retainedearnings = bs.getRetainedEarnings();
		double stockholdersequity = capitalstock + retainedearnings;
		double totalliabilitiesstock = currentliabilities + stockholdersequity;
		
		balancesheet.setCash(cash);
		balancesheet.setAccountsReceivable(accountsreceivable);
		balancesheet.setPrepaidExpenses(prepaid);
		balancesheet.setInventory(inventory);
		balancesheet.setTotalCurrentAssets(totalcurrentliabilities);
		balancesheet.setProperty(property);
		balancesheet.setAccumDepre(accumdepre);
		balancesheet.setNetFixedAssets(netfixedassets);
		balancesheet.setTotalAssets(totalassets);
		balancesheet.setAccountsPayable(accountspayable);
		balancesheet.setAccuredExpenses(accuredexpenses);
		balancesheet.setPortionDebt(portiondebt);
		balancesheet.setTaxPayable(taxpayable);
		balancesheet.setCurrentLiabilities(currentliabilities);
		balancesheet.setCapitalStock(capitalstock);
		balancesheet.setRetainedEarnings(retainedearnings);
		balancesheet.setStockholdersEquity(stockholdersequity);
		balancesheet.setTotalLiabilities(totalliabilitiesstock);
		
		balanceSheetDao.insertData(balancesheet);
	
		
				return new ModelAndView("balancesheet", "command", balancesheet);
		
	}
}
