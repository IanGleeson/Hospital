package model;


import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Department {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	@Column
	private String Name;
	
	@OneToMany(cascade={CascadeType.ALL})
	@JoinColumn(name="DeptId")
	private List<Ward> Wards;
	
}
