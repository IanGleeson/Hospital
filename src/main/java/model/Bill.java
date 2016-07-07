package model;

import java.math.BigDecimal;
import java.time.LocalDate;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class Bill {
	
	@Id @GeneratedValue
	private int id;
	@Column
	private LocalDate billDate;
	
	@Column
	private BigDecimal roomCharge;
	@Column
	int nightsStayed;
	@Column
	private BigDecimal doctorFee;
	@Column
	private String billNote;
	@Column
	private BigDecimal miscFee;

	
	
	public Bill(){}
	
	
	
	
	














	public Bill(int id, LocalDate billDate, BigDecimal roomCharge, int nightsStayed, BigDecimal doctorFee,
			String billNote, BigDecimal miscFee) {
		this.id = id;
		this.billDate = billDate;
		this.roomCharge = roomCharge;
		this.nightsStayed = nightsStayed;
		this.doctorFee = doctorFee;
		this.billNote = billNote;
		this.miscFee = miscFee;
		
	}



















	public int getNightsStayed() {
		return nightsStayed;
	}



















	public void setNightsStayed(int nightsStayed) {
		this.nightsStayed = nightsStayed;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public LocalDate getBillDate() {
		return billDate;
	}
	public void setBillDate(LocalDate billDate) {
		this.billDate = billDate;
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
		return "Bill [id=" + id + ", billDate=" + billDate + ", roomCharge=" + roomCharge + ", doctorFee=" + doctorFee
				+ ", billNote=" + billNote + ", miscFee=" + miscFee + "]";
	}
}

