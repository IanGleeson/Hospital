package model;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Bill {
	
	@Id @GeneratedValue
	private int id;
	@Column
	private Date billDate;
	@Column
	private int patientId;
	@Column
	private BigDecimal roomCharge;
	@Column
	private BigDecimal doctorFee;
	@Column
	private Note billNote;
	@Column
	private BigDecimal miscFee;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getBillDate() {
		return billDate;
	}
	public void setBillDate(Date billDate) {
		this.billDate = billDate;
	}
	public int getPatientId() {
		return patientId;
	}
	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}
	public BigDecimal getRoomCharge() {
		return roomCharge;
	}
	public void setRoomCharge(BigDecimal roomCharge) {
		this.roomCharge = roomCharge;
	}
	public BigDecimal getDoctorFee() {
		return doctorFee;
	}
	public void setDoctorFee(BigDecimal doctorFee) {
		this.doctorFee = doctorFee;
	}
	public Note getBillNote() {
		return billNote;
	}
	public void setBillNote(Note billNote) {
		this.billNote = billNote;
	}
	public BigDecimal getMiscFee() {
		return miscFee;
	}
	public void setMiscFee(BigDecimal miscFee) {
		this.miscFee = miscFee;
	}
	
	
	

}
