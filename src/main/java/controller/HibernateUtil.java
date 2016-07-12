package controller;


import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

import com.microsoft.sqlserver.jdbc.SQLServerException;

public class HibernateUtil {
	
	/* This class cannot be instantiated and therefore the constructor
	 * is private */
	private HibernateUtil() {}
	
	/* One session-factory per web app. Creates a Session object
	 * as we need one, we will need a session for every select, 
	 * every update, every delete...... 
	 */
	private static SessionFactory sessionFactory;
	
	static {
		/* A Configuration hooks up to the hibernate.cfg.xml file
		 * to read the properties. The configure() method uses
		 * the mapping and properties in that resource/ config file. */
		Configuration config = new Configuration().configure();
		config.addAnnotatedClass(model.Patient.class);
		config.addAnnotatedClass(model.User.class);
		config.addAnnotatedClass(model.Bill.class);
		config.addAnnotatedClass(model.Note.class);
		config.addAnnotatedClass(model.Prescription.class);
		config.addAnnotatedClass(model.Bed.class);
		config.addAnnotatedClass(model.RoomTypeAndCost.class);
		config.addAnnotatedClass(model.Department.class);
		config.addAnnotatedClass(model.Ward.class);
		config.addAnnotatedClass(model.Room.class);
		config.addAnnotatedClass(model.Doctor.class);
		config.addAnnotatedClass(model.Hospital.class);
		config.addAnnotatedClass(model.RoomType.class);

		/* config.getProperties() gets all the mappings/ properties 
		 * from the hibernate config file. */
		StandardServiceRegistryBuilder builder = 
				new StandardServiceRegistryBuilder().
				applySettings(config.getProperties());
		
		/* A SessionFactory is used to create each Session instance */
		try {
			sessionFactory = config.buildSessionFactory(builder.build());
        } catch (Exception e) {
            throw new ExceptionInInitializerError(e);
        }
	}
	
	/* A static method to return the instance of the sessionFactory */
	protected static SessionFactory getSessionFactory() {
		return sessionFactory;
	}
}