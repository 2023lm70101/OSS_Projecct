package com.entities;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "calendar")
public class Calendar {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;

	    private String title;
	    private String startDate;
	    private String endDate;
	    private boolean allDay;
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
		public String getStartDate() {
			return startDate;
		}
		public void setStartDate(String startDate) {
			this.startDate = startDate;
		}
		public String getEndDate() {
			return endDate;
		}
		public void setEndDate(String endDate) {
			this.endDate = endDate;
		}
		public boolean isAllDay() {
			return allDay;
		}
		public void setAllDay(boolean allDay) {
			this.allDay = allDay;
		}
		public Calendar(int id, String title, String startDate, String endDate, boolean allDay) {
			super();
			this.id = id;
			this.title = title;
			this.startDate = startDate;
			this.endDate = endDate;
			this.allDay = allDay;
		}
		public Calendar() {
			super();
			// TODO Auto-generated constructor stub
		}
	    
	    
}
