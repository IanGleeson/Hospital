package model;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Department {
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	@Column
	private String Name;
		
   @OneToMany(cascade=CascadeType.ALL)
   @JoinColumn(name="DeptId")
   private Set<Ward> wards = new HashSet<>();	
	
   public Department() {
	
	}

   
   
public Department(int id, String name) {
	super();
	Id = id;
	Name = name;
}



/**
 * @return the id
 */
public int getId() {
	return Id;
}

/**
 * @param id the id to set
 */
public void setId(int id) {
	Id = id;
}

/**
 * @return the name
 */
public String getName() {
	return Name;
}

/**
 * @param name the name to set
 */
public void setName(String name) {
	Name = name;
}

/**
 * @return the wards
 */
public Set<Ward> getWards() {
	return wards;
}

/**
 * @return the wards Names
 */
public String getWardNames() {
	String wardNames="";
	for(Ward ward:wards){		
	 	wardNames += ward.getName() +", ";		
	}
	return wardNames;
}

/**
 * @param wards the wards to set
 */
public void setWards(Set<Ward> wards) {
	this.wards = wards;
}

/* (non-Javadoc)
 * @see java.lang.Object#hashCode()
 */
@Override
public int hashCode() {
	final int prime = 31;
	int result = 1;
	result = prime * result + Id;
	result = prime * result + ((Name == null) ? 0 : Name.hashCode());
	result = prime * result + ((wards == null) ? 0 : wards.hashCode());
	return result;
}

/* (non-Javadoc)
 * @see java.lang.Object#equals(java.lang.Object)
 */
@Override
public boolean equals(Object obj) {
	if (this == obj)
		return true;
	if (obj == null)
		return false;
	if (getClass() != obj.getClass())
		return false;
	Department other = (Department) obj;
	if (Id != other.Id)
		return false;
	if (Name == null) {
		if (other.Name != null)
			return false;
	} else if (!Name.equals(other.Name))
		return false;
	if (wards == null) {
		if (other.wards != null)
			return false;
	} else if (!wards.equals(other.wards))
		return false;
	return true;
}

/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "Department [Id=" + Id + ", Name=" + Name + ", wards=" + wards + "]";
}

}