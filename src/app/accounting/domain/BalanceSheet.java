package app.accounting.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="BALANCE_SHEET")
public class BalanceSheet {
	@Id
	@SequenceGenerator(name = "balanceseq", sequenceName = "BALANCESHEET_SEQ")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "balanceseq")	
	@Column(name="ID")
	private long id;
	@Column(name="CASH")
	private double cash;
	@Column(name="ACCOUNTS_RECEIVABLE")
	private double accountsReceivable;
	@Column(name="PREPAID_EXPENSES")
	private double prepaidExpenses;
	@Column(name="INVENTORY")
	private double inventory;
	@Column(name="TOTAL_CURRENT_ASSETS")
	private double totalCurrentAssets;
	@Column(name="PROPERTY")
	private double property;
	@Column(name="ACCUM_DEPRE")
	private double accumDepre;
	@Column(name="NET_FIXED_ASSETS")
	private double netFixedAssets;
	@Column(name="TOTAL_ASSETS")
	private double totalAssets;
	@Column(name="ACCOUNTS_PAYABLE")
	private double accountsPayable;
	@Column(name="ACCURED_EXPENSES")
	private double accuredExpenses;
	@Column(name="PORTION_DEBT")
	private double portionDebt;
	@Column(name="TAX_PAYABLE")
	private double taxPayable;
	@Column(name="CURRENT_LIABILITIES")
	private double currentLiabilities;
	@Column(name="CAPITAL_STOCK")
	private double capitalStock;
	@Column(name="RETAINED_EARNINGS")
	private double retainedEarnings;
	@Column(name="STOCKHOLDERS_EQUITY")
	private double stockholdersEquity;
	@Column(name="TOTAL_LIABILITIES")
	private double totalLiabilities;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public double getCash() {
		return cash;
	}
	public void setCash(double cash) {
		this.cash = cash;
	}
	public double getAccountsReceivable() {
		return accountsReceivable;
	}
	public void setAccountsReceivable(double accountsReceivable) {
		this.accountsReceivable = accountsReceivable;
	}
	public double getPrepaidExpenses() {
		return prepaidExpenses;
	}
	public void setPrepaidExpenses(double prepaidExpenses) {
		this.prepaidExpenses = prepaidExpenses;
	}
	public double getInventory() {
		return inventory;
	}
	public void setInventory(double inventory) {
		this.inventory = inventory;
	}
	public double getTotalCurrentAssets() {
		return totalCurrentAssets;
	}
	public void setTotalCurrentAssets(double totalCurrentAssets) {
		this.totalCurrentAssets = totalCurrentAssets;
	}
	public double getProperty() {
		return property;
	}
	public void setProperty(double property) {
		this.property = property;
	}
	public double getAccumDepre() {
		return accumDepre;
	}
	public void setAccumDepre(double accumDepre) {
		this.accumDepre = accumDepre;
	}
	public double getNetFixedAssets() {
		return netFixedAssets;
	}
	public void setNetFixedAssets(double netFixedAssets) {
		this.netFixedAssets = netFixedAssets;
	}
	public double getTotalAssets() {
		return totalAssets;
	}
	public void setTotalAssets(double totalAssets) {
		this.totalAssets = totalAssets;
	}
	public double getAccountsPayable() {
		return accountsPayable;
	}
	public void setAccountsPayable(double accountsPayable) {
		this.accountsPayable = accountsPayable;
	}
	public double getAccuredExpenses() {
		return accuredExpenses;
	}
	public void setAccuredExpenses(double accuredExpenses) {
		this.accuredExpenses = accuredExpenses;
	}
	public double getPortionDebt() {
		return portionDebt;
	}
	public void setPortionDebt(double portionDebt) {
		this.portionDebt = portionDebt;
	}
	public double getTaxPayable() {
		return taxPayable;
	}
	public void setTaxPayable(double taxPayable) {
		this.taxPayable = taxPayable;
	}
	public double getCurrentLiabilities() {
		return currentLiabilities;
	}
	public void setCurrentLiabilities(double currentLiabilities) {
		this.currentLiabilities = currentLiabilities;
	}
	public double getCapitalStock() {
		return capitalStock;
	}
	public void setCapitalStock(double capitalStock) {
		this.capitalStock = capitalStock;
	}
	public double getRetainedEarnings() {
		return retainedEarnings;
	}
	public void setRetainedEarnings(double retainedEarnings) {
		this.retainedEarnings = retainedEarnings;
	}
	public double getStockholdersEquity() {
		return stockholdersEquity;
	}
	public void setStockholdersEquity(double stockholdersEquity) {
		this.stockholdersEquity = stockholdersEquity;
	}
	public double getTotalLiabilities() {
		return totalLiabilities;
	}
	public void setTotalLiabilities(double totalLiabilities) {
		this.totalLiabilities = totalLiabilities;
	}
	
	
	
	

}
