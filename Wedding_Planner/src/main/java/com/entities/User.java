package com.entities;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Table;
import jakarta.persistence.Lob;
import jakarta.persistence.OneToMany;

@Entity
@Table(name = "tblusers")
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int user_id;
    
    @OneToMany(mappedBy = "user")
    private List<Account> accounts;

    @OneToMany(mappedBy = "user")
    private List<AccountDetail> accountDetails;
    
    @OneToMany(mappedBy = "user")
    private List<WeddingBook> Weddingbook;
    
    @OneToMany(mappedBy = "user")
    private List<Liquidation> liquidation;
    
    private String firstname;
    private String lastname;

    @Enumerated(EnumType.STRING)
    private Gender gender;

    private String username;
    private String password;
    private String email;
    private String designation;
    public Gender getGender() {
		return gender;
	}

	public void setGender(Gender gender) {
		this.gender = gender;
	}

	private String address;

    @Enumerated(EnumType.STRING)
    private AccessLevel accessLevel;

    private String profilePicture;
    private String dateCreated;

    // Enum for Gender
    public enum Gender {
        MALE, FEMALE
    }

    // Enum for AccessLevel
    public enum AccessLevel {
        LEVEL_0("0"),
        LEVEL_1("1"),
        LEVEL_2("2");

        private final String value;

        AccessLevel(String value) {
            this.value = value;
        }

        public String getValue() {
            return value;
        }
    }

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public List<Account> getAccounts() {
		return accounts;
	}

	public void setAccounts(List<Account> accounts) {
		this.accounts = accounts;
	}

	public List<AccountDetail> getAccountDetails() {
		return accountDetails;
	}

	public void setAccountDetails(List<AccountDetail> accountDetails) {
		this.accountDetails = accountDetails;
	}

	public List<WeddingBook> getWeddingbook() {
		return Weddingbook;
	}

	public void setWeddingbook(List<WeddingBook> weddingbook) {
		Weddingbook = weddingbook;
	}

	public List<Liquidation> getLiquidation() {
		return liquidation;
	}

	public void setLiquidation(List<Liquidation> liquidation) {
		this.liquidation = liquidation;
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



	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public AccessLevel getAccessLevel() {
		return accessLevel;
	}

	public void setAccessLevel(AccessLevel accessLevel) {
		this.accessLevel = accessLevel;
	}

	public String getProfilePicture() {
		return profilePicture;
	}

	public void setProfilePicture(String profilePicture) {
		this.profilePicture = profilePicture;
	}

	public String getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated;
	}

	public User(int user_id, List<Account> accounts, List<AccountDetail> accountDetails, List<WeddingBook> weddingbook,
			List<Liquidation> liquidation, String firstname, String lastname, Gender gender, String username,
			String password, String email, String designation, String address, AccessLevel accessLevel,
			String profilePicture, String dateCreated) {
		super();
		this.user_id = user_id;
		this.accounts = accounts;
		this.accountDetails = accountDetails;
		Weddingbook = weddingbook;
		this.liquidation = liquidation;
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.username = username;
		this.password = password;
		this.email = email;
		this.designation = designation;
		this.address = address;
		this.accessLevel = accessLevel;
		this.profilePicture = profilePicture;
		this.dateCreated = dateCreated;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", accounts=" + accounts + ", accountDetails=" + accountDetails
				+ ", Weddingbook=" + Weddingbook + ", liquidation=" + liquidation + ", firstname=" + firstname
				+ ", lastname=" + lastname + ", gender=" + gender + ", username=" + username + ", password=" + password
				+ ", email=" + email + ", designation=" + designation + ", address=" + address + ", accessLevel="
				+ accessLevel + ", profilePicture=" + profilePicture + ", dateCreated=" + dateCreated + "]";
	}

    
    
    
	}
