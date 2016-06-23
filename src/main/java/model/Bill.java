package model;

import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.Type;

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
	private String billNote;
	@Column
	private BigDecimal miscFee;
	
	
	public Bill(){}
	
	
	
	
	public Bill(int id, Date billDate, int patientId, BigDecimal roomCharge, BigDecimal doctorFee, String billNote,
			BigDecimal miscFee) {
		this.id = id;
		this.billDate = billDate;
		this.patientId = patientId;
		this.roomCharge = roomCharge;
		this.doctorFee = doctorFee;
		this.billNote = billNote;
		this.miscFee = miscFee;
	}




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
	public String getBillNote() {
		return billNote;
	}
	public void setBillNote(String billNote) {
		this.billNote = billNote;
	}
	public BigDecimal getMiscFee() {
		return miscFee;
	}
	public void setMiscFee(BigDecimal miscFee) {
		this.miscFee = miscFee;
	}




	@Override
	public String toString() {
		return "Bill [id=" + id + ", billDate=" + billDate + ", patientId=" + patientId + ", roomCharge=" + roomCharge
				+ ", doctorFee=" + doctorFee + ", billNote=" + billNote + ", miscFee=" + miscFee + "]";
	}
	
	
	

}

