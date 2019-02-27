package com.yash.blogapp.domain;

/**
 * Blog is a model that is used to travel data from one layer to other layer
 * @author sharma.pankaj
 *
 */
public class Blog {
	/**
	 * id of blog. this will be used as primary key
	 */
	private int id;
	/**
	 * title of blog
	 */
	private String title;
	/**
	 * body of blog, that is used to hold blog content
	 */
	private String body;
	/**
	 * created date of blog
	 */
	private String created_at;
	/**
	 * updated date of blog
	 */
	private String updated_at;
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
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
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
