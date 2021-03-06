package com.yash.blogapp.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.yash.blogapp.domain.Blog;

public class BlogRowMapper {

	public Blog mapRow(ResultSet rs, Blog blog) {
		try{
		
		if(rs.next()){
			blog.setId(rs.getInt("id"));
			blog.setTitle(rs.getString("title"));
			blog.setBody(rs.getString("body"));
			blog.setCreated_at(rs.getString("created_at"));
			blog.setUpdated_at(rs.getString("updated_at"));
		}
		}
		catch(SQLException ex){
			throw new RuntimeException(ex.getMessage());
		}
		return blog;
	}

}
