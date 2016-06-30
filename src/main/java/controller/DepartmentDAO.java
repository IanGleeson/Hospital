package controller;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import model.Department;



public class DepartmentDAO {
	
	private SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	
	
	public DepartmentDAO(){

		
	}

	protected   boolean addDepartment(Department department){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		Integer departmentId = 0;
		try {
			tx = session.beginTransaction();
			departmentId=(Integer)session.save(department);
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
	
	protected boolean updateDepartment(Department department){
		Session session =  HibernateUtil.getSessionFactory().openSession();
		Transaction tx= null;

		try{

			tx=session.beginTransaction();
			session.update(department);

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
	
	protected boolean deleteDepartment(int departmentId){
		Session session =  HibernateUtil.getSessionFactory().openSession();
		Transaction tx= null;

		try{

			tx=session.beginTransaction();
			Department department = session.get(Department.class, departmentId);
			session.delete(department);
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
	@SuppressWarnings("unchecked")
	protected List<Department> viewDepartment(){	
		
		Session session = HibernateUtil.getSessionFactory().openSession();
		List<Department> department= (List<Department>) session.createQuery("From Department").list();
	    return department;
		
	}
	protected Department viewAllDepartment(int departmentId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Department department = session.get(Department.class, departmentId);
		session.close();
		return department;
		
	}
	
	
	
}
