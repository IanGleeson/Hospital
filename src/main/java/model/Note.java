package model;

import java.time.LocalDate;

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
	private LocalDate noteDate;
	public LocalDate getNoteDate() {
		return noteDate;
	}


	public void setNoteDate(LocalDate noteDate) {
		this.noteDate = noteDate;
	}




	@Column
	private String content;
	
	
	
	public Note(){}
	
	
	
	



	public Note(int id, LocalDate noteDate, String content) {
		this.id = id;
		this.noteDate = noteDate;
		this.content = content;
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


	@Override
	public String toString() {
		return "Note [id=" + id + ", noteDate=" + noteDate + ", content=" + content + "]";
	}
	



	
	
	
}

