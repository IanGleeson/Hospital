package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import model.Department;



public class DepartmentDAO {
	
	//private static SessionFactory sessionFactory;
	
	public DepartmentDAO(){
		
/*		 A Configuration hooks up to the hibernate.cfg.xml file
		 * to read the properties. The configure() method uses
		 * the mapping and properties in that resource/ config file. 
		Configuration config = new Configuration().configure();
		
		config.addAnnotatedClass(model.Department.class);
		
		 config.getProperties() gets all the mappings/ properties 
		 * from the hibernate config file. 
		StandardServiceRegistryBuilder builder = 
				new StandardServiceRegistryBuilder().
				applySettings(config.getProperties());
		
		 A SessionFactory is used to create each Session instance 
		sessionFactory = config.buildSessionFactory(builder.build());*/
		
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
	protected List<Department> viewDepartment(){
		Session session = HibernateUtil.getSessionFactory().openSession();
		@SuppressWarnings("unchecked")
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
