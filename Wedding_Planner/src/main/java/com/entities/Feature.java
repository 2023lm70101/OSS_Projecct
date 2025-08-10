package com.entities;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "tbl_features")
public class Feature {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int featureId;

    @ManyToOne
    @JoinColumn(name = "category_id", referencedColumnName = "category_id")
    private WeddingCategory category;
    private String wedingType;
    private String title;
    private String description;
    
    public String getwedingType() {
		return wedingType;
	}
	public void setwedingType(String title) {
		this.title = wedingType;
	}
	public int getFeatureId() {
		return featureId;
	}
	public void setFeatureId(int featureId) {
		this.featureId = featureId;
	}
	public WeddingCategory getCategory() {
		return category;
	}
	public void setCategory(WeddingCategory category) {
		this.category = category;
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
	public Feature(int featureId, WeddingCategory category, String title, String description) {
		super();
		this.featureId = featureId;
		this.category = category;
		this.title = title;
		this.description = description;
	}
	public Feature() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Feature [featureId=" + featureId + ", category=" + category + ", title=" + title + ", description="
				+ description + "]";
	}

    
}

