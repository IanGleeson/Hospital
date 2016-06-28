package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Department;
import model.Ward;

public class WardDAO {

	public WardDAO(){}
	
	protected boolean addWard(Ward ward){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		Integer wardId = 0;
		try {
			tx = session.beginTransaction();
			wardId=(Integer)session.save(ward);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null)
				tx.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return false;
	}
	
	protected boolean updateWard(Ward ward){
		Session session =  HibernateUtil.getSessionFactory().openSession();
		Transaction tx= null;

		try{

			tx=session.beginTransaction();
			session.update(ward);

			tx.commit();

		}catch (HibernateException e){
			if(tx != null)
				tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		return false;
		
	}
	
	protected boolean deleteWard(int wardId){
		Session session =  HibernateUtil.getSessionFactory().openSession();
		Transaction tx= null;

		try{

			tx=session.beginTransaction();
			Ward ward = session.get(Ward.class, wardId);
			session.delete(ward);
			tx.commit();

		}catch (HibernateException e){
			if(tx != null)
				tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return false;
		
	}
	protected List<Ward> viewWard(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
		String sql="select Ward.DeptId,Department.Name,Ward.Name from Ward, Department where Ward.DeptId=Department.Id";
		List<Ward> ward= (List<Ward>) session.createQuery(sql).list();
		return ward;
		
	}
	protected Ward viewAllWard(int wardId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Ward ward = session.get(Ward.class, wardId);
		session.close();
		return ward;
		
	}
	
}
