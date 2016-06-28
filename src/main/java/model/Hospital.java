package model;

public class Hospital {
	
	private int id;
	private int roomId;
	private int wardId;
	private String wardName;
	private int type;
	private String roomType;
	private int deptId;
	private String deptName;
	
	public Hospital() {
		
	}

	public Hospital(int id, int roomId, int wardId, String wardName, int type, String roomType, int deptId,
			String deptName) {
		
		this.id = id;
		this.roomId = roomId;
		this.wardId = wardId;
		this.wardName = wardName;
		this.type = type;
		this.roomType = roomType;
		this.deptId = deptId;
		this.deptName = deptName;
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

	public int getWardId() {
		return wardId;
	}

	public void setWardId(int wardId) {
		this.wardId = wardId;
	}

	public String getWardName() {
		return wardName;
	}

	public void setWardName(String wardName) {
		this.wardName = wardName;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public int getDeptId() {
		return deptId;
	}

	public void setDeptId(int deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}



	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Hospital other = (Hospital) obj;
		if (deptId != other.deptId)
			return false;
		if (deptName == null) {
			if (other.deptName != null)
				return false;
		} else if (!deptName.equals(other.deptName))
			return false;
		if (id != other.id)
			return false;
		if (roomId != other.roomId)
			return false;
		if (roomType == null) {
			if (other.roomType != null)
				return false;
		} else if (!roomType.equals(other.roomType))
			return false;
		if (type != other.type)
			return false;
		if (wardId != other.wardId)
			return false;
		if (wardName == null) {
			if (other.wardName != null)
				return false;
		} else if (!wardName.equals(other.wardName))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Hospital [id=" + id + ", roomId=" + roomId + ", wardId=" + wardId + ", wardName=" + wardName + ", type="
				+ type + ", roomType=" + roomType + ", deptId=" + deptId + ", deptName=" + deptName + "]";
	}
	
	
	
	

}
