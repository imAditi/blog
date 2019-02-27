package com.yash.blogapp.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.yash.blogapp.dao.CategoryDAO;
import com.yash.blogapp.domain.Category;
import com.yash.blogapp.rowmapper.CategoryRowMapper;
import com.yash.blogapp.util.DateUtil;
import com.yash.blogapp.util.JNDIConnectionPooling;
import com.yash.blogapp.util.SimpleJDBCUtil;

public class CategoryDAOImpl extends SimpleJDBCUtil implements CategoryDAO {

	@Override
	public void insert(Category category) {
		String query = "INSERT INTO categories (id, name,created_at) values('" + category.getId() + "','"
				+ category.getName() + "','" + category.getCreated_at() + "')";
		try {
			createPreparedStatement(query).execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public Category show(int id) {
		Category category = new Category();
		try {
			ResultSet rs = createPreparedStatement("select * from categories where id=" + id).executeQuery();
			CategoryRowMapper categoryRowMapper = new CategoryRowMapper();
			category = categoryRowMapper.mapRow(rs, category);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return category;
	}

	@Override
	public void update(Category category) {
		String query = "UPDATE categories set name=?,created_at=? where id=?";
		PreparedStatement pstmt = createPreparedStatement(query);
		try {
			pstmt.setString(1, category.getName());
			pstmt.setString(2, category.getCreated_at());
			pstmt.setInt(3, category.getId());
			pstmt.execute();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

	}

	@Override
	public void delete(int id) {
		String query = "DELETE from categories where id=" + id;
		String query2 = "DELETE from blogcategories where category_id=" + id;
		try {
			createPreparedStatement(query).execute();
			createPreparedStatement(query2).execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Category> list() {
		List<Category> categories = new ArrayList<>();
		try {
			ResultSet rs = createPreparedStatement("select * from categories").executeQuery();
			while (rs.next()) {
				Category category = new Category();
				category.setId(rs.getInt("id"));
				category.setName(rs.getString("name"));
				category.setCreated_at(rs.getString("created_at"));

				SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				String created = new DateUtil().convertDateStringToString(rs.getString("created_at"));

				category.setCreated_at(created);
				
				categories.add(category);

			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return categories;
	}

}
