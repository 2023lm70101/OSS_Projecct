package com.entities;
import java.util.List;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;


@Entity
@Table(name = "tblaccounts")
public class Account {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY) private int id;
	@ManyToOne
	@JoinColumn(name = "user_id", referencedColumnName = "user_id")
	private User user;
	
    private String userEmail;
    private String userPassword;

    
    
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
    
    @Enumerated(EnumType.STRING)
    private AccessLevel accessLevel;

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

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public AccessLevel getAccessLevel() {
		return accessLevel;
	}

	public void setAccessLevel(AccessLevel accessLevel) {
		this.accessLevel = accessLevel;
	}

	public Account(int id, User user, String userEmail, String userPassword, AccessLevel accessLevel) {
		super();
		this.id = id;
		this.user = user;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
		this.accessLevel = accessLevel;
	}

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	

    
	
    
    
}
