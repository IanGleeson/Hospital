package model;

import java.time.LocalDate;
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
	private LocalDate prescriptionDate;
	@Column
	private String content;

	public Prescription(){}

	public Prescription(int id, LocalDate prescriptionDate, String content) {
		this.id = id;
		this.prescriptionDate = prescriptionDate;
		this.content = content;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public LocalDate getPrescriptionDate() {
		return prescriptionDate;
	}
	public void setPrescriptionDate(LocalDate prescriptionDate) {
		this.prescriptionDate = prescriptionDate;
	}




	@Override
	public String toString() {
		return "Prescription [id=" + id + ", prescriptionDate=" + prescriptionDate + ", content=" + content + "]";
	}





	
	
	
	



}
