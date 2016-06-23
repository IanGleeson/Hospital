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
	
	@Column
	@OneToMany(cascade =CascadeType.ALL)
	@JoinColumn(name="Name")
	private int Name;
	
	List<Bed> listOfBeds;

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
	 * @return the wardId
	 */
	public int getWardId() {
		return WardId;
	}

	/**
	 * @param wardId the wardId to set
	 */
	public void setWardId(int wardId) {
		WardId = wardId;
	}

	/**
	 * @return the type
	 */
	public int getType() {
		return Type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(int type) {
		Type = type;
	}

	/**
	 * @return the name
	 */
	public int getName() {
		return Name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(int name) {
		Name = name;
	}

	/**
	 * @return the listOfBeds
	 */
	public List<Bed> getListOfBeds() {
		return listOfBeds;
	}

	/**
	 * @param listOfBeds the listOfBeds to set
	 */
	public void setListOfBeds(List<Bed> listOfBeds) {
		this.listOfBeds = listOfBeds;
	}
	
	
	
}
