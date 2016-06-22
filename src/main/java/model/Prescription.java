package model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Prescription {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column
	private Date prescriptionDate;
	
	public Prescription(){}
	
	
	
	
	
	public Prescription(int id, Date prescriptionDate) {
		this.id = id;
		this.prescriptionDate = prescriptionDate;
	}





	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getPrescriptionDate() {
		return prescriptionDate;
	}
	public void setPrescriptionDate(Date prescriptionDate) {
		this.prescriptionDate = prescriptionDate;
	}





	@Override
	public String toString() {
		return "Prescription [id=" + id + ", prescriptionDate=" + prescriptionDate + "]";
	}
	
	
	
	



}
