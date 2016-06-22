package controller;

import java.util.ArrayList;
import java.util.List;

import model.Doctor;

import org.hibernate.Query;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
public class DoctorDAO {

	private static SessionFactory sessionFactory;

	protected DoctorDAO(){}

	protected Integer addDoctor(Doctor d){

		Session session = HibernateUtil.getSessionFactory().openSession();

		Transaction tx = null;

		Integer doctorId = 0;

		try{
			tx = session.beginTransaction();
			doctorId = (Integer)session.save(d);
			tx.commit();
		}catch (HibernateException e) {
			if(tx != null)
				tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
		return doctorId;
	}

	protected void updateDoctor(Doctor newDoctor){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.update(newDoctor);
			tx.commit();
		}catch (HibernateException e){
			if(tx != null)
				tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	protected Doctor getDoctorDetailsById(int doctorId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Doctor d = session.get(Doctor.class,  doctorId);
		session.close();
		return d;
	}
protected Doctor getDoctorDetailsByLastname(String lastname){
	Session session = HibernateUtil.getSessionFactory().openSession();
	Doctor d = session.get(Doctor.class, lastname);
	session.close();
	return d;
}
protected Doctor getDoctorDetailsByDepartment(String department){
	Session session = HibernateUtil.getSessionFactory().openSession();
	Doctor d = session.get(Doctor.class, department);
	session.close();
	return d;
}
	
	protected List<Doctor> getAllDoctors(){
		List<Doctor> listOfDoctors = new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		try{
			Query query = session.createQuery("From Doctor");
			listOfDoctors = (List<Doctor>)query.list();
		}catch (HibernateException e){
			e.printStackTrace();
		}
		session.close();
		return listOfDoctors;
	}
	protected void deleteDoctor(int doctorId){
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			Doctor doctor = session.get(Doctor.class,doctorId);
			System.out.println("About to delete"+doctor);
			session.delete(doctor)	;
			tx.commit();
		}catch(HibernateException e) {
			if(tx!= null)
				tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}

	}
		
	
}
