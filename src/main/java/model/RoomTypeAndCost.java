package model;

import java.math.BigDecimal;
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
public class RoomTypeAndCost {

	@Id @GeneratedValue
	private int Id; 

	@Column
	private String RoomType;	

	@Column
	private BigDecimal Cost;
	
	
	@OneToMany(cascade =CascadeType.ALL)
	@JoinColumn(name="Type")
	private Set<Room> rooms = new HashSet<>();	

	public RoomTypeAndCost() {
		super();
	}

	
	public RoomTypeAndCost(int id, String roomType, BigDecimal cost, Set<Room> rooms) {
		super();
		Id = id;
		RoomType = roomType;
		Cost = cost;
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
		Id = id;
	}

	/**
	 * @return the roomType
	 */
	public String getRoomType() {
		return RoomType;
	}

	/**
	 * @param roomType the roomType to set
	 */
	public void setRoomType(String roomType) {
		RoomType = roomType;
	}

	/**
	 * @return the cost
	 */
	public BigDecimal getCost() {
		return Cost;
	}

	/**
	 * @param cost the cost to set
	 */
	public void setCost(BigDecimal cost) {
		Cost = cost;
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
		result = prime * result + ((Cost == null) ? 0 : Cost.hashCode());
		result = prime * result + Id;
		result = prime * result + ((RoomType == null) ? 0 : RoomType.hashCode());
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
		RoomTypeAndCost other = (RoomTypeAndCost) obj;
		if (Cost == null) {
			if (other.Cost != null)
				return false;
		} else if (!Cost.equals(other.Cost))
			return false;
		if (Id != other.Id)
			return false;
		if (RoomType == null) {
			if (other.RoomType != null)
				return false;
		} else if (!RoomType.equals(other.RoomType))
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
		return "RoomTypeAndCost [Id=" + Id + ", RoomType=" + RoomType + ", Cost=" + Cost + ", rooms=" + rooms + "]";
	}



}
