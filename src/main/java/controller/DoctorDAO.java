package controller;

import java.util.ArrayList;
import java.util.List;

import model.Doctor;
import model.Gender;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
public class DoctorDAO {

	

	private static final Gender FEMALE = null;
	protected DoctorDAO(){}

	protected Integer addDoctor(Doctor d){
		System.out.println("you are in the add doc of the dao");
		Session session = HibernateUtil.getSessionFactory().openSession();

		Transaction tx = null;

		Integer doctorId = 1;

		try{
			tx = session.beginTransaction();
			doctorId = (Integer)session.save(d);
			System.out.println("you have saved the doctor "+d);
			tx.commit();
			System.out.println("you have commited the transaction in the DAO");
		}catch (HibernateException e) {
			
			if(tx != null){
				
			System.out.println("the transaction was rolled back");
				tx.rollback();}
			e.printStackTrace();
		}finally{
			session.close();
			System.out.println("you have closed the session in the DAO");
		}
		System.out.println("you are about to return to the doctor servlet from the DAO");
		return doctorId;
	}
/*
 * protected List<Doctor> getDoctorDetailsByLastName(String lastName) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		String hql = "FROM Doctor WHERE "= :text";
		Query query = session.createQuery(hql);
		query.setString("text", lastName);
		List<Doctor> listOfDoctors = query.list();
		return listOfDoctors;
 */
	protected void updateDoctor(Doctor newDoctor){
		Session session = HibernateUtil.getSessionFactory().openSession();
		System.out.println("session open");
		Transaction tx = null;
		try{
			tx = session.beginTransaction();
			session.update(newDoctor);
			System.out.println("The doctor "+ newDoctor+" will be updated");
			tx.commit();
		}catch (HibernateException e){
			if(tx != null)
				System.out.println("Transaction is not null and will rollback");
				tx.rollback();
			e.printStackTrace();
		}finally{
			session.close();
		}
	}
	protected Doctor getDoctorDetailsById(int doctorId){
		List<Doctor> listOfDoctors= new ArrayList<>();
		Session session = HibernateUtil.getSessionFactory().openSession();
		System.out.println("You have opened the session in the DAO in the getDoctorDetailsById METHOD!!!!");
		Doctor d = session.get(Doctor.class,  doctorId);
		System.out.println("The doctor is "+ d);
		
		
		session.close();
		System.out.println("You have closed the session in the DAO in the getDoctorDetailsById method");
		return d;
	}
	
	@SuppressWarnings("unchecked")
	protected List<Doctor> getDoctorDetailsByLastName(String surName) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		System.out.println("you have openend session in getDocByLastName meth of the DAO");
		//String hql = "FROM Doctor WHERE = text";
		String hql = "FROM Doctor WHERE " + "lastName" + " = :text";
		System.out.println("tHE STRING IS "+hql);
		Query query = session.createQuery(hql);
		query.setString("text", surName);		
		List<Doctor> listOfDoctors = query.list();
		return listOfDoctors;
	}
protected List<Doctor> getDoctorDetailsByDepartment(String departmentId){
	Session session = HibernateUtil.getSessionFactory().openSession();
	String hql = "FROM Doctor WHERE "  + "deptId "+ " = :text";
	System.out.println("tHE STRING IS "+hql);
	Query query = session.createQuery(hql);
	query.setString("text", departmentId);		
	List<Doctor> listOfDoctors = query.list();
	System.out.println("You are in the getDocDetailsByDept method of the DAO, and the list of doctors is "+ listOfDoctors);
	return listOfDoctors;
}
	
	

	
	@SuppressWarnings("unchecked")
	protected List<Doctor> getAllDoctors(){
		
		
		List<Doctor> listOfDoctors = new ArrayList<>();
		System.out.println("You are in the getAllDoctors() of DAO BEFORE the Hibernate Util");
		
		Session session = HibernateUtil.getSessionFactory().openSession();
			
		try{
			Query query = session.createQuery("FROM Doctor");
			System.out.println("you have executed the query");
			listOfDoctors = (List<Doctor>)query.list();
			System.out.println("What follows is the LIST OF DOCTORS!!");
			System.out.println("the list of docs is "+ listOfDoctors);
		}catch (HibernateException e){
			e.printStackTrace();
		}
		session.close();
		System.out.println("the session after getalldocs has been closed");
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
			System.out.println("The doc has been deleted");
			tx.commit();
			System.out.println("The transaction has been committed");
		}catch(HibernateException e) {
			if(tx!= null)
				tx.rollback();
			System.out.println("The session has been rolled back");
			e.printStackTrace();
		}finally{
			session.close();
		}

	}
		
	
}
