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
	 * @return the deptId
	 */
	public int getDeptId() {
		return DeptId;
	}

	/**
	 * @param deptId the deptId to set
	 */
	public void setDeptId(int deptId) {
		DeptId = deptId;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return Name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		Name = name;
	}

	/**
	 * @return the departments
	 */
	public List<Department> getDepartments() {
		return Departments;
	}

	/**
	 * @param departments the departments to set
	 */
	public void setDepartments(List<Department> departments) {
		Departments = departments;
	}
}
