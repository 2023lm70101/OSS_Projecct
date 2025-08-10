package com.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.sql.Timestamp;
import java.util.Arrays;

import jakarta.persistence.Column;

@Entity
@Table(name = "tblpostwedding")
public class PostWedding {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String title;
    @Column(length = 3000)
    private String description;
    private String location;
     
    @Enumerated(EnumType.STRING)
    private Status status;
    
    //Enum for Status
    public enum Status {
        ACTIVE,INACTIVE
    }

    private String weddingDate;
    
    @ManyToOne
    @JoinColumn(name = "wedding_type", referencedColumnName = "wedding_type")
    private WeddingCategory category;
    
    private String dateCreated;
    private String datePublished;

    
    private String previewImage;

   
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getWeddingDate() {
		return weddingDate;
	}

	public void setWeddingDate(String weddingDate) {
		this.weddingDate = weddingDate;
	}

	

	public WeddingCategory getCategory() {
		return category;
	}

	public void setCategory(WeddingCategory category) {
		this.category = category;
	}

	public String getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(String dateCreated) {
		this.dateCreated = dateCreated;
	}

	public String getDatePublished() {
		return datePublished;
	}

	public void setDatePublished(String datePublished) {
		this.datePublished = datePublished;
	}

	public String getPreviewImage() {
		return previewImage;
	}

	public void setPreviewImage(String previewImage) {
		this.previewImage = previewImage;
	}

	public PostWedding(int id, String title, String description, String location, Status status, String weddingDate,
			WeddingCategory category, String dateCreated, String datePublished, String previewImage) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.location = location;
		this.status = status;
		this.weddingDate = weddingDate;
		this.category = category;
		this.dateCreated = dateCreated;
		this.datePublished = datePublished;
		this.previewImage = previewImage;
	}

	public PostWedding() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "PostWedding [id=" + id + ", title=" + title + ", description=" + description + ", location=" + location
				+ ", status=" + status + ", weddingDate=" + weddingDate + ", category=" + category + ", dateCreated="
				+ dateCreated + ", datePublished=" + datePublished + ", previewImage=" + previewImage + "]";
	}

	
	

    
}

