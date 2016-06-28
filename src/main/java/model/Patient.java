package model;

import java.sql.Date;
import java.time.LocalDate;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.type.descriptor.java.LocalDateJavaDescriptor;
@Entity
public class Patient {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column
	private String forename;
	@Column
	private String surname;
	@Column
	//@Temporal(TemporalType.DATE)
	private LocalDate dob;
	@Column
	private boolean gender;
	@Column
	private String address;
	@Column
	private String phone;
	@Column
	private String nextOfKin;
	@Column
	private int doctorId;
	@Column
	private int deptId;
	@Column
	private LocalDate admissionDate;
	@Column
	private LocalDate dischargeDate;
	@Column
	private int bedId;
	@Column
	private LocalDate appointment;
	@Column
	private boolean alive;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="patientId")
	private Set<Prescription> prescriptions;
	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name="patientId")
	private Set<Note> patientNotes;
	@Enumerated(EnumType.STRING)
	private PatientType patientType;
	@Column
	private boolean inpatient;	
	
	public Patient(){}
	
	
	public Patient(int id, String forename, String surname, LocalDate dob, boolean gender, String address, String phone,
			String nextOfKin, int doctorId, int deptId, LocalDate admissionDate, LocalDate dischargeDate, int bedId,
			LocalDate appointment, boolean alive, Set<Prescription> prescriptions, Set<Note> patientNotes,
			PatientType patientType, boolean inpatient) {
		this.id = id;
		this.forename = forename;
		this.surname = surname;
		this.dob = dob;
		this.gender = gender;
		this.address = address;
		this.phone = phone;
		this.nextOfKin = nextOfKin;
		this.doctorId = doctorId;
		this.deptId = deptId;
		this.admissionDate = admissionDate;
		this.dischargeDate = dischargeDate;
		this.bedId = bedId;
		this.appointment = appointment;
		this.alive = alive;
		this.prescriptions = prescriptions;
		this.patientNotes = patientNotes;
		this.patientType = patientType;
		this.inpatient = inpatient;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getForename() {
		return forename;
	}
	public void setForename(String forename) {
		this.forename = forename;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public LocalDate getDob() {
		return dob;
	}
	public void setDob(LocalDate dob) {
		this.dob = dob;
	}
	public boolean isGender() {
		return gender;
	}
	public void setGender(boolean gender) {
		this.gender = gender;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getNextOfKin() {
		return nextOfKin;
	}
	public void setNextOfKin(String nextOfKin) {
		this.nextOfKin = nextOfKin;
	}
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	public int getDeptId() {
		return deptId;
	}
	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}
	public LocalDate getAdmissionDate() {
		return admissionDate;
	}
	public void setAdmissionDate(LocalDate admissionDate) {
		this.admissionDate = admissionDate;
	}
	public LocalDate getDischargeDate() {
		return dischargeDate;
	}
	public void setDischargeDate(LocalDate dischargeDate) {
		this.dischargeDate = dischargeDate;
	}
	public int getBedId() {
		return bedId;
	}
	public void setBedId(int bedId) {
		this.bedId = bedId;
	}
	public LocalDate getAppointment() {
		return appointment;
	}
	public void setAppointment(LocalDate appointment) {
		this.appointment = appointment;
	}
	public boolean isAlive() {
		return alive;
	}
	public void setAlive(boolean alive) {
		this.alive = alive;
	}
	public Set<Prescription> getPrescriptions() {
		return prescriptions;
	}
	public void setPrescriptions(Set<Prescription> prescriptions) {
		this.prescriptions = prescriptions;
	}
	public Set<Note> getPatientNotes() {
		return patientNotes;
	}
	public void setPatientNotes(Set<Note> patientNotes) {
		this.patientNotes = patientNotes;
	}
	public PatientType getPatientType() {
		return patientType;
	}
	public void setPatientType(PatientType patientType) {
		this.patientType = patientType;
	}
	public boolean isInpatient() {
		return inpatient;
	}
	public void setInpatient(boolean inpatient) {
		this.inpatient = inpatient;
	}


	@Override
	public String toString() {
		return "Patient [id=" + id + ", forename=" + forename + ", surname=" + surname + ", dob=" + dob + ", gender="
				+ gender + ", address=" + address + ", phone=" + phone + ", nextOfKin=" + nextOfKin + ", doctorId="
				+ doctorId + ", deptId=" + deptId + ", admissionDate=" + admissionDate + ", dischargeDate="
				+ dischargeDate + ", bedId=" + bedId + ", appointment=" + appointment + ", alive=" + alive
				+ ", prescriptions=" + prescriptions + ", patientNotes=" + patientNotes + ", patientType=" + patientType
				+ ", inpatient=" + inpatient + "]";
	}
	
	

	
}
	
	