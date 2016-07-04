package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.Bill;

public class BillDAO {

	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	private List<Bill> allBills;

	protected void addBill(Bill bill) {

		Session session = sessionFactory.openSession();
		Transaction tx = null;

		try {
			tx=session.beginTransaction();
			session.save(bill);
			tx.commit();
			
		
		} catch (HibernateException e) {
			if (tx != null) {
				tx.rollback();
			}
			e.printStackTrace();
		} finally {
			session.close();
		}

	}
	
	protected List<Bill> getBillsById(int patientId) {

		Session session = sessionFactory.openSession();
		String hql = "From Bill where patientId=:patientId";
		Query query = session.createQuery(hql);
		query.setParameter("patientId", patientId);
		@SuppressWarnings("unchecked")
		List<Bill> bills = query.list();
		session.close();

		return bills;
	}

	protected void updateBill(int billId) {

	}

	protected List<Bill> getAllBills() {

		return allBills;
	}

}
