package com.entities;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_liquidation")
public class Liquidation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @ManyToOne
    @JoinColumn(name = "booking_id", referencedColumnName = "booking_Id")
    private WeddingBook booking;

    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "event_id", referencedColumnName = "event_id")
    private Events event;

    private double payment;
    private double cash;
    private double credit;
    private String dateIssue;
    private String dateModified;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public WeddingBook getWeddingBook() {
		return booking;
	}
	public void setWeddingBook(WeddingBook weddingBook) {
		this.booking = weddingBook;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Events getEvent() {
		return event;
	}
	public void setEvent(Events event) {
		this.event = event;
	}
	public double getPayment() {
		return payment;
	}
	public void setPayment(double payment) {
		this.payment = payment;
	}
	public double getCash() {
		return cash;
	}
	public void setCash(double cash) {
		this.cash = cash;
	}
	public double getCredit() {
		return credit;
	}
	public void setCredit(double credit) {
		this.credit = credit;
	}
	public String getDateIssue() {
		return dateIssue;
	}
	public void setDateIssue(String dateIssue) {
		this.dateIssue = dateIssue;
	}
	public String getDateModified() {
		return dateModified;
	}
	public void setDateModified(String dateModified) {
		this.dateModified = dateModified;
	}
	
	
	public Liquidation(int id, WeddingBook booking, User user, Events event, double payment, double cash,
			double credit, String dateIssue, String dateModified) {
		super();
		this.id = id;
		this.booking = booking;
		this.user = user;
		this.event = event;
		this.payment = payment;
		this.cash = cash;
		this.credit = credit;
		this.dateIssue = dateIssue;
		this.dateModified = dateModified;
	}
	public Liquidation() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Liquidation [id=" + id + ", booking=" + booking + ", user=" + user + ", event=" + event
				+ ", payment=" + payment + ", cash=" + cash + ", credit=" + credit + ", dateIssue=" + dateIssue
				+ ", dateModified=" + dateModified + "]";
	}

    
    
}


