package com.entities;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;




@Entity
@Table(name = "tblguest")
public class Guest {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "booking_id", referencedColumnName = "booking_id")
    private WeddingBook booking;

    private String fullname;
    private String guestname;
    private String address;
    private String state;
    private String zipcode;
    
    public enum Priority {
	    A, B, C, D, E
	}

	public enum OutOfTown {
	    YES, NO
	}
    
    @Enumerated(EnumType.STRING)
    private Priority priority;

    @Enumerated(EnumType.STRING)
    private OutOfTown outOfTown;
    
    private String relationship;
    private String tracksAndGifts;
    private String city;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public WeddingBook getBooking() {
		return booking;
	}
	public void setBooking(WeddingBook booking) {
		this.booking = booking;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getGuestname() {
		return guestname;
	}
	public void setGuestname(String guestname) {
		this.guestname = guestname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public Priority getPriority() {
		return priority;
	}
	public void setPriority(Priority priority) {
		this.priority = priority;
	}
	public OutOfTown getOutOfTown() {
		return outOfTown;
	}
	public void setOutOfTown(OutOfTown outOfTown) {
		this.outOfTown = outOfTown;
	}
	public String getRelationship() {
		return relationship;
	}
	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	public String getTracksAndGifts() {
		return tracksAndGifts;
	}
	public void setTracksAndGifts(String tracksAndGifts) {
		this.tracksAndGifts = tracksAndGifts;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Guest(int id, WeddingBook booking, String fullname, String guestname, String address, String state,
			String zipcode, Priority priority, OutOfTown outOfTown, String relationship, String tracksAndGifts,
			String city) {
		super();
		this.id = id;
		this.booking = booking;
		this.fullname = fullname;
		this.guestname = guestname;
		this.address = address;
		this.state = state;
		this.zipcode = zipcode;
		this.priority = priority;
		this.outOfTown = outOfTown;
		this.relationship = relationship;
		this.tracksAndGifts = tracksAndGifts;
		this.city = city;
	}
	public Guest() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Guest [id=" + id + ", booking=" + booking + ", fullname=" + fullname + ", guestname="
				+ guestname + ", address=" + address + ", state=" + state + ", zipcode=" + zipcode + ", priority="
				+ priority + ", outOfTown=" + outOfTown + ", relationship=" + relationship + ", tracksAndGifts="
				+ tracksAndGifts + ", city=" + city + "]";
	}
    
    
    
}    

