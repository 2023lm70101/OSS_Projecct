package com.entities;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;


@Entity
@Table(name = "tblweddingbook")
public class WeddingBook {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int booking_Id;

    @OneToMany(mappedBy = "booking")
    private List<Events> events;

    @OneToMany(mappedBy = "booking")
    private List<Gallery> gallery;
    
    @OneToMany(mappedBy = "booking")
    private List<Guest> Guest;
    
    @OneToMany(mappedBy = "booking")
    private List<Liquidation> liquidation;
    
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    private User user;
    
    @ManyToOne
    @JoinColumn(name = "wedding_type", referencedColumnName = "wedding_type")
    private WeddingCategory category;
    
    private String bride;
    private String groom;
    private String userEmail;
    private String weddingDate;

    @ManyToOne
    @JoinColumn(name = "organizer_id", referencedColumnName = "organizer_id")
    private Organizer organizer;

	public int getBooking_Id() {
		return booking_Id;
	}

	public void setBooking_Id(int booking_Id) {
		this.booking_Id = booking_Id;
	}

	public List<Events> getEvents() {
		return events;
	}

	public void setEvents(List<Events> events) {
		this.events = events;
	}

	public List<Gallery> getGallery() {
		return gallery;
	}

	public void setGallery(List<Gallery> gallery) {
		this.gallery = gallery;
	}

	public List<Guest> getGuest() {
		return Guest;
	}

	public void setGuest(List<Guest> guest) {
		Guest = guest;
	}

	public List<Liquidation> getLiquidation() {
		return liquidation;
	}

	public void setLiquidation(List<Liquidation> liquidation) {
		this.liquidation = liquidation;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public WeddingCategory getCategory() {
		return category;
	}

	public void setCategory(WeddingCategory category) {
		this.category = category;
	}

	public String getBride() {
		return bride;
	}

	public void setBride(String bride) {
		this.bride = bride;
	}

	public String getGroom() {
		return groom;
	}

	public void setGroom(String groom) {
		this.groom = groom;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getWeddingDate() {
		return weddingDate;
	}

	public void setWeddingDate(String weddingDate) {
		this.weddingDate = weddingDate;
	}

	public Organizer getOrganizer() {
		return organizer;
	}

	public void setOrganizer(Organizer organizer) {
		this.organizer = organizer;
	}

	public WeddingBook(int booking_Id, List<Events> events, List<Gallery> gallery, List<com.entities.Guest> guest,
			List<Liquidation> liquidation, User user, WeddingCategory category, String bride, String groom,
			String userEmail, String weddingDate, Organizer organizer) {
		super();
		this.booking_Id = booking_Id;
		this.events = events;
		this.gallery = gallery;
		Guest = guest;
		this.liquidation = liquidation;
		this.user = user;
		this.category = category;
		this.bride = bride;
		this.groom = groom;
		this.userEmail = userEmail;
		this.weddingDate = weddingDate;
		this.organizer = organizer;
	}

	public WeddingBook() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "WeddingBook [booking_Id=" + booking_Id + ", events=" + events + ", gallery=" + gallery + ", Guest="
				+ Guest + ", liquidation=" + liquidation + ", user=" + user + ", category=" + category + ", bride="
				+ bride + ", groom=" + groom + ", userEmail=" + userEmail + ", weddingDate=" + weddingDate
				+ ", organizer=" + organizer + "]";
	}

	
	
    
    
	}


    
