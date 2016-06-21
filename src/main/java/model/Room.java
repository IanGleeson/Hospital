package model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity
public class Room {
	
	@Id @GeneratedValue
	private int Id;

	@Column 
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="RoomId")
	private int WardId;
	
	@Column
	@OneToMany(cascade =CascadeType.ALL)
	@JoinColumn(name="RoomType")
	private int Type;
	
	List<Bed> listOfBeds;
	
}
