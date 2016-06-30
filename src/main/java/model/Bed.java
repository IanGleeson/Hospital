package model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.Type;



@Entity
public class Bed {

	@Id @GeneratedValue
	private int Id;
	
	@Column
	private int RoomId;

	@Column
	//@Type(type="true_false")
	private Boolean Occupied;

	public Bed() {
		super();
	}

	public Bed(int id, int roomId, boolean isOccupied) {
		this.Id = id;
		this.RoomId = roomId;
		this.Occupied = isOccupied;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		this.Id = id;
	}

	public int getRoomId() {
		return RoomId;
	}

	public void setRoomId(int roomId) {
		this.RoomId = roomId;
	}

	public boolean isOccupied() {
		return Occupied;
	}

	public void setOccupied(boolean isOccupied) {
		this.Occupied = isOccupied;
	}

	@Override
	public String toString() {
		return "Bed [Id=" + Id + ", RoomId=" + RoomId + ", isOccupied=" + Occupied + "]";
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Bed other = (Bed) obj;
		if (Id != other.Id)
			return false;
		if (RoomId != other.RoomId)
			return false;
		if (Occupied != other.Occupied)
			return false;
		return true;
	}
	
	
}
