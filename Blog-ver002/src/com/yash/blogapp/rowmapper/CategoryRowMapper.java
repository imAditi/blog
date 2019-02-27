package com.yash.blogapp.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.yash.blogapp.domain.Category;

public class CategoryRowMapper {

	public Category mapRow(ResultSet rs, Category category) {
		try {
			if (rs.next()) {
				category.setId(rs.getInt("id"));
				category.setName(rs.getString("name"));
				category.setCreated_at(rs.getString("created_at"));

			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return category;
	}

}
