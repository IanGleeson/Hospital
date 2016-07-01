package model;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity
@Table(name = "RoomType_View")
public class RoomType {
	@Column
	private String RoomType;
	@Column
	private int Id;
	
	public RoomType(){}

	public RoomType(String roomType, int id) {
		RoomType = roomType;
		Id = id;
	}

	public String getRoomType() {
		return RoomType;
	}

	public void setRoomType(String roomType) {
		RoomType = roomType;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	@Override
	public String toString() {
		return "RoomType [RoomType=" + RoomType + ", Id=" + Id + "]";
	}
	
	
}
