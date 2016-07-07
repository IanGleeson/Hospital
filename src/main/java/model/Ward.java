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
public class Ward {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	
	@Column
	private String Name;
	
	@Column
	private int DeptId;	

	@OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="WardId")
	private Set<Room> rooms = new HashSet<>();

	
	
	public Ward() {
		super();
	}



	public Ward(int id, String name, int deptId) {
		super();
		this.Id = id;
		this.Name = name;
		this.DeptId = deptId;
		this.rooms = rooms;
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
		this.Id = id;
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
		this.Name = name;
	}



	/**
	 * @return the deptId
	 */
	public int getDeptId() {
		return DeptId;
	}



	/**
	 * @param deptId the deptId to set
	 */
	public void setDeptId(int deptId) {

		this.DeptId = deptId;

	}



	/**
	 * @return the rooms
	 */
	public Set<Room> getRooms() {
		return rooms;
	}



	/**
	 * @param rooms the rooms to set
	 */
	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	}



	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + DeptId;
		result = prime * result + Id;
		result = prime * result + ((Name == null) ? 0 : Name.hashCode());
		result = prime * result + ((rooms == null) ? 0 : rooms.hashCode());
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
		Ward other = (Ward) obj;
		if (DeptId != other.DeptId)
			return false;
		if (Id != other.Id)
			return false;
		if (Name == null) {
			if (other.Name != null)
				return false;
		} else if (!Name.equals(other.Name))
			return false;
		if (rooms == null) {
			if (other.rooms != null)
				return false;
		} else if (!rooms.equals(other.rooms))
			return false;
		return true;
	}



	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Ward [Id=" + Id + ", Name=" + Name + ", DeptId=" + DeptId + "]";
	}




	
}
