package model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;



@Entity
public class Bed {

	@Id @GeneratedValue
	private int Id;
	
	@Column
	private int RoomId;

	@Column
	private boolean isOccupied;

	public Bed() {
		super();
	}

	public Bed(int id, int roomId, boolean isOccupied) {
		super();
		Id = id;
		RoomId = roomId;
		this.isOccupied = isOccupied;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public int getRoomId() {
		return RoomId;
	}

	public void setRoomId(int roomId) {
		RoomId = roomId;
	}

	public boolean isOccupied() {
		return isOccupied;
	}

	public void setOccupied(boolean isOccupied) {
		this.isOccupied = isOccupied;
	}

	@Override
	public String toString() {
		return "Bed [Id=" + Id + ", RoomId=" + RoomId + ", isOccupied=" + isOccupied + "]";
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
		if (isOccupied != other.isOccupied)
			return false;
		return true;
	}
	
	
}
