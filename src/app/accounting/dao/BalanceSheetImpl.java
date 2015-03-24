package app.accounting.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import app.accounting.domain.BalanceSheet;
@Repository
public class BalanceSheetImpl implements BalanceSheetDao{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public Long insertData(BalanceSheet balancesheet) {
		Long rowsaffected = null;
		Session session = sessionFactory.getCurrentSession();
		rowsaffected = (Long) session.save(balancesheet);
		return rowsaffected;
	}

	@Override
	@Transactional
	public List<BalanceSheet> viewBalanceSheet(long id) {
		List <BalanceSheet> balancesheet = null;
		Session session = sessionFactory.getCurrentSession();
		balancesheet = session.createQuery("from BalanceSheet as balancesheet where balancesheet.id ="+id).list();
		return balancesheet;
	}

}
