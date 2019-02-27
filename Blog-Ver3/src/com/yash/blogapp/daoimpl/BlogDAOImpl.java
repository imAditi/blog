package com.yash.blogapp.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.rowmapper.BlogRowMapper;
import com.yash.blogapp.util.DateUtil;
import com.yash.blogapp.util.JNDIConnectionPooling;
import com.yash.blogapp.util.SimpleJDBCUtil;

public class BlogDAOImpl extends SimpleJDBCUtil implements BlogDAO {

	BlogCategoriesDAOImpl blogcat = new BlogCategoriesDAOImpl();
	@Override
	public void insert(Blog blog) {

		String query = "insert into blogs(title,body,created_at,updated_at) values('" + blog.getTitle() + "','"
				+ blog.getBody() + "','" + blog.getCreated_at() + "','" + blog.getUpdated_at() + "')";
//		String catQuery = "insert into blogcategories(blog_id,category_id) values('" + blog.getId() + "','"
//				+ blog.getCategory() + "')";
		try {
			createPreparedStatement(query).execute();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public Blog show(int id) {
		Blog blog = new Blog();
		try {
			System.out.println("show in");
			PreparedStatement pstmt = createPreparedStatement("select * from blogs where id=?");
			pstmt.setInt(1, id);
			System.out.println("create pstmt");
			ResultSet rs = pstmt.executeQuery();
			System.out.println("rs created");
			System.out.println("rs1 execute");
			BlogRowMapper blogRowMapper = new BlogRowMapper();
			blog = blogRowMapper.mapRow(rs, blog);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ResultSet rs2;
		try {
			rs2 = createPreparedStatement("select * from blogcategories where blog_id=" + blog.getId())
					.executeQuery();
			List<Integer> categories = new ArrayList<>();
			while (rs2.next()) {
				System.out.println(rs2.getString("category_id"));
				categories.add(rs2.getInt("category_id"));
			}
			blog.setCategory(categories);
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return blog;
	}

	@Override
	public void update(Blog blog) {
		String query = "UPDATE blogs set title=?,body=?,updated_at=? where id=?";
		PreparedStatement pstmt = createPreparedStatement(query);

		try {
			pstmt.setString(1, blog.getTitle());
			pstmt.setString(2, blog.getBody());
			pstmt.setString(3, blog.getUpdated_at());
			pstmt.setInt(4, blog.getId());
			pstmt.execute();
			blogcat.update(blog.getId(),blog.getCategory());
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

	}

	@Override
	public void delete(int id) {
		System.out.println("in delete"+id);
		blogcat.delete(id);
		System.out.println("deleted in blog-cat table");
		String query = "DELETE from blogs where id=" + id;
		
		try {
			
			createPreparedStatement(query).execute();
			System.out.println("blog query");
		}catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public List<Blog> list() {

		List<Blog> blogs = new ArrayList<>();
		try {
			ResultSet rs = createPreparedStatement("SELECT * FROM blogcategories AS c, blogs AS b WHERE b.`id` = c.`blog_id` GROUP BY c.blog_id").executeQuery();
			
			while (rs.next()) {
				Blog blog = new Blog();
				List<Integer> categories = new ArrayList<>();
				blog.setId(rs.getInt("id"));
				blog.setTitle(rs.getString("title"));
				blog.setBody(rs.getString("body"));
				
				String created = new DateUtil().convertDateStringToString(rs.getString("created_at"));
				
				blog.setCreated_at(created);
				blog.setUpdated_at(rs.getString("updated_at"));

				ResultSet rs2 = createPreparedStatement("SELECT c.category_id FROM blogcategories AS c, blogs AS b "
						+ "WHERE b.`id` = c.`blog_id` AND id=" + blog.getId()).executeQuery();
				while (rs2.next()) {

					categories.add(rs2.getInt("category_id"));
				}
				blog.setCategory(categories);
				
				blogs.add(blog);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return blogs;
	}

}
