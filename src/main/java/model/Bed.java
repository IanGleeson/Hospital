package model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class Bed {

	@Id @GeneratedValue
	private int id;
	
	@Column
	private int roomId;

	@Column
	private boolean isOccupied;

	public Bed() {
		
	}

	public Bed(int id, int roomId, boolean isOccupied) {
		this.id = id;
		this.roomId = roomId;
		this.isOccupied = isOccupied;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRoomId() {
		return roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public boolean isOccupied() {
		return isOccupied;
	}

	public void setOccupied(boolean isOccupied) {
		this.isOccupied = isOccupied;
	}

	@Override
	public String toString() {
		return "Bed [Id=" + id + ", RoomId=" + roomId + ", isOccupied=" + isOccupied + "]";
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
		if (id != other.id)
			return false;
		if (roomId != other.roomId)
			return false;
		if (isOccupied != other.isOccupied)
			return false;
		return true;
	}
	
	
}
