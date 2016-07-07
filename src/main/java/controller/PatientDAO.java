package controller;

import java.util.List;
import java.util.Set;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import model.Bill;
import model.Note;
import model.Patient;
import model.PatientType;
import model.Prescription;

public class PatientDAO {

	SessionFactory sessionFactory = HibernateUtil.getSessionFactory();

	protected void addPatient(Patient p) {

		Session session = sessionFactory.openSession();
		Transaction tx = null;

		try {
			tx = session.beginTransaction();
			session.save(p);
			System.out.println("Patient p: " + p);
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
	
	protected void addNote(Note note){
		
		Session session = sessionFactory.openSession();
		Transaction tx = null;
		

		try {
			tx = session.beginTransaction();
			
			session.save(note);
			System.out.println("Note n: " + note);
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
	
	protected void updateNote(Note note) {

		Session session = sessionFactory.openSession();
		Transaction tx = null;
	

		try {

			tx = session.beginTransaction();
			session.update(note);
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

	protected void updatePatient(Patient p) {

		Session session = sessionFactory.openSession();
		Transaction tx = null;

		try {

			tx = session.beginTransaction();
			session.update(p);
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

	protected List<Patient> getAllPatients() {

		Session session = sessionFactory.openSession();

		String hql = "From Patient";
		Query query = session.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Patient> allPatients = (List<Patient>) query.list();
		System.out.println("This is all patients " + allPatients);
		session.close();

		return allPatients;

	}

	protected Patient searchPatient(String searchtext) {

		return null;
	}

	protected Patient getPatientById(int patientId) {

		Session session = sessionFactory.openSession();

		Patient p = session.get(Patient.class, patientId);
		session.close();

		return p;
	}

	protected List<Note> getNotesById(int patientId) {

		Session session = sessionFactory.openSession();
		String hql = "From Note where patientId=:patientId";
		Query query = session.createQuery(hql);
		query.setParameter("patientId", patientId);
		@SuppressWarnings("unchecked")
		List<Note> notes = query.list();
		session.close();

		return notes;
	}
	


	protected List<Prescription> getPrescriptionsById(int patientId) {

		Session session = sessionFactory.openSession();
		String hql = "From Prescription where patientId=:patientId";
		Query query = session.createQuery(hql);
		query.setParameter("patientId", patientId);
		@SuppressWarnings("unchecked")
		List<Prescription> prescriptions = query.list();
		session.close();

		return prescriptions;
	}



}
