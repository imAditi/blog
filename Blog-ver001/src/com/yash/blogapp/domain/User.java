package com.yash.blogapp.domain;
/**
 * This Blog is a model that is used to travel data from one layer to other layer
 * @author aditi.jain
 *
 */
public class User {
	/**
	 * id of user this will be used as primary key 
	 */
	 private int id;
	 /**
	  * first name of user
	  */
	 private String firstName;
	 /**
	  * last name of user
	  */
	 private String lastName;
	 /**
	  * contact of user
	  */
	 private int contact;
	 /**
	  * email of user
	  */
	 private String email;
	 /**
	  * password of user
	  */
	 private String password;
	 /**
	  * role of user
	  */
	 private int role;
	 /**
	  * status of user
	  */
	 private int status;
	 /**
	  * created date of user
	  */
	 private String created_at;
	 /**
	  * updated date of user
	  */
     private String updated_at;
    	
    	
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}
		public long getContact() {
			return contact;
		}
		public void setContact(int contact) {
			this.contact = contact;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public int getRole() {
			return role;
		}
		public void setRole(int role) {
			this.role = role;
		}
		public int getStatus() {
			return status;
		}
		public void setStatus(int status) {
			this.status = status;
		}
		public String getCreated_at() {
			return created_at;
		}
		public void setCreated_at(String created_at) {
			this.created_at = created_at;
		}
		public String getUpdated_at() {
			return updated_at;
		}
		public void setUpdated_at(String updated_at) {
			this.updated_at = updated_at;
		}
	
    	
	 

}