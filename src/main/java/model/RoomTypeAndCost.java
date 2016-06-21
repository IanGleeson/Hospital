package model;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

@Entity
public class RoomTypeAndCost {

	@Id @GeneratedValue
	private int Id; 

	@Column @JoinColumn(name="Type")
	private String RoomType;

	@Column
	private BigDecimal Cost;

	public RoomTypeAndCost() {
		super();
	}

	public RoomTypeAndCost(int id, String roomType, BigDecimal cost) {
		super();
		Id = id;
		RoomType = roomType;
		Cost = cost;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getRoomType() {
		return RoomType;
	}

	public void setRoomType(String roomType) {
		RoomType = roomType;
	}

	public BigDecimal getCost() {
		return Cost;
	}

	public void setCost(BigDecimal cost) {
		Cost = cost;
	}

	@Override
	public String toString() {
		return "TypeAndCost [Id=" + Id + ", RoomType=" + RoomType + ", Cost=" + Cost + "]";
	}

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
		return true;
	}


}
