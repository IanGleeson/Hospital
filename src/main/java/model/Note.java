package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Note {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column
	private String content;
	@Column
	private int patientId;
	
	
	public Note(){}
	
	
	
	public Note(int id, String content, int patientId) {
		this.id = id;
		this.content = content;
		this.patientId = patientId;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}



	@Override
	public String toString() {
		return "Note [id=" + id + ", content=" + content + ", patientId=" + patientId + "]";
	}
	
	
}
