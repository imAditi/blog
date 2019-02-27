package com.yash.blogapp.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.domain.User;

public class UserRowMapper {

	public User maprow(ResultSet rs, User user) {
		try {
			if (rs.next()) {
				
				user.setId(rs.getInt("id"));
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setContact(rs.getInt("contact"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setRole(rs.getInt("role"));
				user.setStatus(rs.getInt("status"));
				user.setCreated_at(rs.getString("created_at"));
				user.setUpdated_at(rs.getString("updated_at"));
				
				
				
			}
		} catch (SQLException ex) {
			throw new RuntimeException(ex.getMessage());
		}
		return user;
	}
}
