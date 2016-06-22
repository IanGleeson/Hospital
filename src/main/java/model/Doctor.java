package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Generated;
@Entity
public class Doctor {
@Id @GeneratedValue(strategy=GenerationType.IDENTITY) 
private int id;
@Column
private String firstName;
@Column
private String lastName;
@Column
private boolean gender;
@Column
private String address;
@Column
private String phoneNumber;
@Column
private String qualification;
@Column
private int DeptID;

public Doctor(){}

public Doctor(int id, String firstName, String lastName, boolean gender,
		String address, String phoneNumber, String qualification, int deptID) {
	super();
	this.id = id;
	this.firstName = firstName;
	this.lastName = lastName;
	this.gender = gender;
	this.address = address;
	this.phoneNumber = phoneNumber;
	this.qualification = qualification;
	DeptID = deptID;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getFirstName() {
	return firstName;
}

public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getLastName() {
	return lastName;
}

public void setLastName(String lastName) {
	this.lastName = lastName;
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

public String getPhoneNumber() {
	return phoneNumber;
}

public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}

public String getQualification() {
	return qualification;
}

public void setQualification(String qualification) {
	this.qualification = qualification;
}

public int getDeptID() {
	return DeptID;
}

public void setDeptID(int deptID) {
	DeptID = deptID;
}

@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + DeptID;
	result = prime * result + ((address == null) ? 0 : address.hashCode());
	result = prime * result + ((firstName == null) ? 0 : firstName.hashCode());
	result = prime * result + (gender ? 1231 : 1237);
	result = prime * result + id;
	result = prime * result + ((lastName == null) ? 0 : lastName.hashCode());
	result = prime * result
			+ ((phoneNumber == null) ? 0 : phoneNumber.hashCode());
	result = prime * result
			+ ((qualification == null) ? 0 : qualification.hashCode());
	return result;
}

@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Doctor other = (Doctor) obj;
	if (DeptID != other.DeptID)
		return false;
	if (address == null) {
		if (other.address != null)
			return false;
	} else if (!address.equals(other.address))
		return false;
	if (firstName == null) {
		if (other.firstName != null)
			return false;
	} else if (!firstName.equals(other.firstName))
		return false;
	if (gender != other.gender)
		return false;
	if (id != other.id)
		return false;
	if (lastName == null) {
		if (other.lastName != null)
			return false;
	} else if (!lastName.equals(other.lastName))
		return false;
	if (phoneNumber == null) {
		if (other.phoneNumber != null)
			return false;
	} else if (!phoneNumber.equals(other.phoneNumber))
		return false;
	if (qualification == null) {
		if (other.qualification != null)
			return false;
	} else if (!qualification.equals(other.qualification))
		return false;
	return true;
}

@Override
public String toString() {
	return "Doctor [id=" + id + ", firstName=" + firstName + ", lastName="
			+ lastName + ", gender=" + gender + ", address=" + address
			+ ", phoneNumber=" + phoneNumber + ", qualification="
			+ qualification + ", DeptID=" + DeptID + "]";
}


}
