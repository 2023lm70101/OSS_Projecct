package com.entities;
import java.util.Arrays;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;



@Entity
@Table(name = "tblgallery")
public class Gallery {

	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;

	    @ManyToOne
	    @JoinColumn(name = "booking_id", referencedColumnName = "booking_id")
	    private WeddingBook booking;

	    private String title;
	    private String caption;
	    private String description;
	    private String filename;
	    private String alternateText;
	    private String type;
	    private String size;
	    private int relateId;
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
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getCaption() {
			return caption;
		}
		public void setCaption(String caption) {
			this.caption = caption;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public String getFilename() {
			return filename;
		}
		public void setFilename(String filename) {
			this.filename = filename;
		}
		public String getAlternateText() {
			return alternateText;
		}
		public void setAlternateText(String alternateText) {
			this.alternateText = alternateText;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getSize() {
			return size;
		}
		public void setSize(String size) {
			this.size = size;
		}
		public int getRelateId() {
			return relateId;
		}
		public void setRelateId(int relateId) {
			this.relateId = relateId;
		}
		public Gallery(int id, WeddingBook booking, String title, String caption, String description, String filename,
				String alternateText, String type, String size, int relateId) {
			super();
			this.id = id;
			this.booking = booking;
			this.title = title;
			this.caption = caption;
			this.description = description;
			this.filename = filename;
			this.alternateText = alternateText;
			this.type = type;
			this.size = size;
			this.relateId = relateId;
		}
		public Gallery() {
			super();
			// TODO Auto-generated constructor stub
		}
		@Override
		public String toString() {
			return "Gallery [id=" + id + ", booking=" + booking + ", title=" + title + ", caption=" + caption
					+ ", description=" + description + ", filename=" + filename + ", alternateText=" + alternateText
					+ ", type=" + type + ", size=" + size + ", relateId=" + relateId + "]";
		}
		
		
	    
}
