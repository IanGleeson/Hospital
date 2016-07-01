package model;

import java.io.Serializable;
import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Type;

@Entity(name = "deptLayout")
public class Hospital implements Serializable{
	@Id
	@Column
	private int BedId;
	@Column
	@Type(type="true_false")
	private boolean Occupied;
	//@Id
	//@Column
	//private int RoomId;
	//@Column
	//private int Type;
	@Column
	private String RoomType;
	@Column
	private BigDecimal Cost;
	@Column
	private String WardName;
	@Column
	private String DeptName;
	
	public Hospital() {}

	public Hospital(int bedId, boolean occupied, String roomType, BigDecimal cost,
			String wardName, String deptName) {
	
		BedId = bedId;
		Occupied = occupied;
	
		RoomType = roomType;
		Cost = cost;
		WardName = wardName;
		DeptName = deptName;
	}

	public int getBedId() {
		return BedId;
	}

	public void setBedId(int bedId) {
		BedId = bedId;
	}

	public boolean isOccupied() {
		return Occupied;
	}

	public void setOccupied(boolean occupied) {
		Occupied = occupied;
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

	public String getWardName() {
		return WardName;
	}

	public void setWardName(String wardName) {
		WardName = wardName;
	}

	public String getDeptName() {
		return DeptName;
	}

	public void setDeptName(String deptName) {
		DeptName = deptName;
	}

	@Override
	public String toString() {
		return "Hospital [BedId=" + BedId + ", Occupied=" + Occupied + ", RoomId=" 
				+ ", RoomType=" + RoomType + ", Cost=" + Cost + ", WardName=" + WardName + ", DeptName=" + DeptName
				+ "]";
	}
	
	

}
