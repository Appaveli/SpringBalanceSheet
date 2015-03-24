package app.accounting.dao;

import java.util.List;

import app.accounting.domain.BalanceSheet;

public interface BalanceSheetDao {
	public Long insertData(BalanceSheet balancesheet);
	public List<BalanceSheet> viewBalanceSheet(long id);

}
