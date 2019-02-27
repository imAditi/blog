package com.yash.blogapp.daoimpl;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.yash.blogapp.util.SimpleJDBCUtil;

public class BlogCategoriesDAOImpl extends SimpleJDBCUtil {

	public void insert(int blog_id,List<Integer> category) {
		for (Integer categoryId : category) {
		String catQuery = "insert into blogcategories(blog_id,category_id) values('" + blog_id + "','"
				+ categoryId + "')";
		try {
			createPreparedStatement(catQuery).execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
	}
	
	public void delete(int id) {
		String catQuery = "DELETE from blogcategories where blog_id=?";
		try {
			System.out.println("delete pstmt cat query");
			PreparedStatement pstmt = createPreparedStatement(catQuery);
			System.out.println("after pstmt cat query");
			pstmt.setInt(1, id);
			System.out.println("set cat query");
			pstmt.execute();
			System.out.println("exe cat query");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void update(int blog_id,List<Integer> category) {
		delete(blog_id);
		insert(blog_id,category);
	}
	
	
}
