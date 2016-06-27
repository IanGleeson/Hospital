package model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Room {
	
	@Id @GeneratedValue
	private int Id;
	
	@Column
	private int WardId;
	
	@Column
	private int Type;

	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="RoomId")
	private Set<Bed> Beds = new HashSet<>();	
	
	public Room() {
		super();
	}

	
	public Room(int id, int wardId, int type, Set<Bed> beds) {
		super();
		Id = id;
		WardId = wardId;
		Type = type;
		this.Beds = beds;
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
	 * @return the wardId
	 */
	public int getWardId() {
		return WardId;
	}

	/**
	 * @param wardId the wardId to set
	 */
	public void setWardId(int wardId) {
		WardId = wardId;
	}

	/**
	 * @return the type
	 */
	public int getType() {
		return Type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		Type = type;
	}

	/**
	 * @return the beds
	 */
	public Set<Bed> getBeds() {
		return Beds;
	}

	/**
	 * @param beds the beds to set
	 */
	public void setBeds(Set<Bed> beds) {
		this.Beds = beds;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + Id;
		result = prime * result + Type;
		result = prime * result + WardId;
		result = prime * result + ((Beds == null) ? 0 : Beds.hashCode());
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
		Room other = (Room) obj;
		if (Id != other.Id)
			return false;
		if (Type != other.Type)
			return false;
		if (WardId != other.WardId)
			return false;
		if (Beds == null) {
			if (other.Beds != null)
				return false;
		} else if (!Beds.equals(other.Beds))
			return false;
		return true;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Room [Id=" + Id + ", WardId=" + WardId + ", Type=" + Type + ", beds=" + Beds + "]";
	}

	
}
