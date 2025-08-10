package com.entities;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

@Entity
@Table(name = "tblaccounts_detail")
public class AccountDetail {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

  
    @ManyToOne
    @JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private User user;

    private String firstname;
    private String lastname;
    private String phone;
    private String city;
    private Timestamp datetimeCreated;
    private String description;
    private String location;
    private String expectationVisitor;
    private BigDecimal cashAdvanced;
    private String status;
    private Date dateSigned;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public Timestamp getDatetimeCreated() {
		return datetimeCreated;
	}
	public void setDatetimeCreated(Timestamp datetimeCreated) {
		this.datetimeCreated = datetimeCreated;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getExpectationVisitor() {
		return expectationVisitor;
	}
	public void setExpectationVisitor(String expectationVisitor) {
		this.expectationVisitor = expectationVisitor;
	}
	public BigDecimal getCashAdvanced() {
		return cashAdvanced;
	}
	public void setCashAdvanced(BigDecimal cashAdvanced) {
		this.cashAdvanced = cashAdvanced;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getDateSigned() {
		return dateSigned;
	}
	public void setDateSigned(Date dateSigned) {
		this.dateSigned = dateSigned;
	}
	public AccountDetail(int id, User user, String firstname, String lastname, String phone, String city,
			Timestamp datetimeCreated, String description, String location, String expectationVisitor,
			BigDecimal cashAdvanced, String status, Date dateSigned) {
		super();
		this.id = id;
		this.user = user;
		this.firstname = firstname;
		this.lastname = lastname;
		this.phone = phone;
		this.city = city;
		this.datetimeCreated = datetimeCreated;
		this.description = description;
		this.location = location;
		this.expectationVisitor = expectationVisitor;
		this.cashAdvanced = cashAdvanced;
		this.status = status;
		this.dateSigned = dateSigned;
	}
	
	public AccountDetail() {
		super();
		// TODO Auto-generated constructor stub
	}
	
    
    
}    

