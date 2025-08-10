package com.entities;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.sql.Timestamp;
import java.util.List;

@Entity
@Table(name = "tblorganizer")
public class Organizer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int organizer_Id;
    
    @OneToMany(mappedBy = "organizer")
    private List<WeddingBook> booking;

    private String fullname;
    private String designation;
    private Timestamp datetimeCreated;
	public int getOrganizerId() {
		return organizer_Id;
	}
	public void setOrganizerId(int organizerId) {
		this.organizer_Id = organizerId;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public Timestamp getDatetimeCreated() {
		return datetimeCreated;
	}
	public void setDatetimeCreated(Timestamp datetimeCreated) {
		this.datetimeCreated = datetimeCreated;
	}
	
	public Organizer(int organizer_Id, String fullname, String designation, Timestamp datetimeCreated) {
		super();
		this.organizer_Id = organizer_Id;
		this.fullname = fullname;
		this.designation = designation;
		this.datetimeCreated = datetimeCreated;
	}
	
	public Organizer() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Organizer [organizer_Id=" + organizer_Id + ", fullname=" + fullname + ", designation=" + designation
				+ ", datetimeCreated=" + datetimeCreated + "]";
	}
    
//    
    
}   

