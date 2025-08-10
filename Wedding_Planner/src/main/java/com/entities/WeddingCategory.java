package com.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

@Entity
@Table(name = "tblweddingcategories")
public class WeddingCategory {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "category_id")
    private int category_id;
	
    @Column(name = "wedding_type")
    private String wedding_type;
    
    @OneToMany(mappedBy = "category")
    private List<Feature> feature;
    
    @OneToMany(mappedBy = "category")
    private List<PostWedding> postWedding;
    
    @OneToMany(mappedBy = "category")
    private List<WeddingBook> booking;

    @Column(name = "price", nullable = false)
    private double price;

    
    private String previewImage;
    
    @Lob
    private byte[] preview_Image;

   
    
	public byte[] getPreview_Image() {
		return preview_Image;
	}


	public void setPreview_Image(byte[] preview_Image) {
		this.preview_Image = preview_Image;
	}


	public int getCategory_id() {
		return category_id;
	}


	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}


	public String getWedding_type() {
		return wedding_type;
	}


	public void setWedding_type(String wedding_type) {
		this.wedding_type = wedding_type;
	}


	public List<Feature> getFeature() {
		return feature;
	}


	public void setFeature(List<Feature> feature) {
		this.feature = feature;
	}


	public List<PostWedding> getPostWedding() {
		return postWedding;
	}


	public void setPostWedding(List<PostWedding> postWedding) {
		this.postWedding = postWedding;
	}


	public List<WeddingBook> getBooking() {
		return booking;
	}


	public void setBooking(List<WeddingBook> booking) {
		this.booking = booking;
	}


	public double getPrice() {
		return price;
	}


	public void setPrice(double price) {
		this.price = price;
	}


	public String getPreviewImage() {
		return previewImage;
	}


	public void setPreviewImage(String previewImage) {
		this.previewImage = previewImage;
	}


	public WeddingCategory(int category_id, String wedding_type, List<Feature> feature, List<PostWedding> postWedding,
			List<WeddingBook> booking, double price, String previewImage, byte[] preview_Image) {
		super();
		this.category_id = category_id;
		this.wedding_type = wedding_type;
		this.feature = feature;
		this.postWedding = postWedding;
		this.booking = booking;
		this.price = price;
		this.previewImage = previewImage;
		this.preview_Image = preview_Image;
	}


	public WeddingCategory() {
		super();
		// TODO Auto-generated constructor stub
	}


	@Override
	public String toString() {
		return "WeddingCategory [category_id=" + category_id + ", wedding_type=" + wedding_type + ", feature=" + feature
				+ ", postWedding=" + postWedding + ", booking=" + booking + ", price=" + price + ", previewImage="
				+ previewImage + ", preview_Image=" + Arrays.toString(preview_Image) + "]";
	}


	
	
    
}
