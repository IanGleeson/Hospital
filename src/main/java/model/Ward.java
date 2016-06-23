package model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;


@Entity
public class Ward {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	@Column
	private int DeptId;	
	@Column
	private String Name;
	
	@ManyToOne
	@JoinColumn(name="DeptId")
	private List<Department> Departments;

	public Ward() {
		super();
	}

	public Ward(int id, int deptId, String name, List<Department> departments) {
		super();
		Id = id;
		DeptId = deptId;
		Name = name;
		Departments = departments;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public int getDeptId() {
		return DeptId;
	}

	public void setDeptId(int deptId) {
		DeptId = deptId;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public List<Department> getDepartments() {
		return Departments;
	}

	public void setDepartments(List<Department> departments) {
		Departments = departments;
	}

	@Override
	public String toString() {
		return "Ward [Id=" + Id + ", DeptId=" + DeptId + ", Name=" + Name + ", Departments=" + Departments + "]";
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Ward other = (Ward) obj;
		if (Departments == null) {
			if (other.Departments != null)
				return false;
		} else if (!Departments.equals(other.Departments))
			return false;
		if (DeptId != other.DeptId)
			return false;
		if (Id != other.Id)
			return false;
		if (Name == null) {
			if (other.Name != null)
				return false;
		} else if (!Name.equals(other.Name))
			return false;
		return true;
	}

	
}