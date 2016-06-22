package controller;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.Patient;
import model.PatientType;

public class PatientDAO {

	SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
	List<Patient> allPatients;

	protected void addPatient(Patient p) {
		
		Session session = sessionFactory.openSession();
		Transaction tx = null;
       
		try {
			tx = session.beginTransaction();
			session.save(p);
			System.out.println("Patient p: " + p);
			tx.commit();
		} catch (HibernateException e) {
			if (tx != null){
				tx.rollback();
			}	
			e.printStackTrace();
		}finally {
			session.close();
		}
	}

	protected void updatePatient(int patientId) {

	}

	protected List<Patient> getAllPatients(Patient p) {
		return allPatients;

	}

	protected Patient searchPatient(String searchtext) {

		return null;
	}

	protected Patient getPatientById(int patientId) {

		return null;
	}

}
