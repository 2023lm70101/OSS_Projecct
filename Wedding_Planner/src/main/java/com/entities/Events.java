package com.entities;
import java.util.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "events")
public class Events {

	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int event_id;
	 
	    @OneToMany(mappedBy = "event")
	    private List<Liquidation> liquidation;

	    @ManyToOne
	    @JoinColumn(name = "booking_id", referencedColumnName = "booking_Id")
	    private WeddingBook booking;

	    private String title;
	    private String location;
	    private Date dateCreated;
	    private String color;
	    private Date start;
	    private Date end;
		public int getId() {
			return event_id;
		}
		public void setId(int id) {
			this.event_id = id;
		}
		public WeddingBook getBooking() {
			return booking;
		}
		public void setBooking(WeddingBook booking) {
			this.booking = booking;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		public Date getDateCreated() {
			return dateCreated;
		}
		public void setDateCreated(Date dateCreated) {
			this.dateCreated = dateCreated;
		}
		public String getColor() {
			return color;
		}
		public void setColor(String color) {
			this.color = color;
		}
		public Date getStart() {
			return start;
		}
		public void setStart(Date start) {
			this.start = start;
		}
		public Date getEnd() {
			return end;
		}
		public void setEnd(Date end) {
			this.end = end;
		}
		public Events(int event_id, WeddingBook booking, String title, String location, Date dateCreated, String color,
				Date start, Date end) {
			super();
			this.event_id = event_id;
			this.booking = booking;
			this.title = title;
			this.location = location;
			this.dateCreated = dateCreated;
			this.color = color;
			this.start = start;
			this.end = end;
		}
		public Events() {
			super();
			// TODO Auto-generated constructor stub
		}
		@Override
		public String toString() {
			return "Events [event_id=" + event_id + ", booking=" + booking + ", title=" + title + ", location=" + location
					+ ", dateCreated=" + dateCreated + ", color=" + color + ", start=" + start + ", end=" + end + "]";
		}
	    
	    
}
