package com.yash.blogapp.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.rowmapper.BlogRowMapper;
import com.yash.blogapp.util.JNDIJDBCUtil;
import com.yash.blogapp.util.SimpleJDBCUtil;

public class BlogDAOImpl extends JNDIJDBCUtil implements BlogDAO {

	@Override
	public void insert(Blog blog) {
		String query ="INSERT INTO blogs (title,body,created_at,updated_at) VALUES ('"+blog.getTitle()+"','"+blog.getBody()+"','"+blog.getCreated_at()+"','"+blog.getUpdated_at()+"')";
		
			try {
				JNDIJDBCUtil.createPreparedStatement(query).execute();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		

	}

	@Override
	public Blog show(int id) {
		Blog blog = new Blog();
		try {
			ResultSet rs = JNDIJDBCUtil.createPreparedStatement("SELECT * FROM blogs WHERE id ="+id).executeQuery();
			BlogRowMapper blogRowMapper = new BlogRowMapper();
			blog = blogRowMapper.mapRow(rs,blog);			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		return blog;
	}

	@Override
	public void update(Blog blog) {
		String query = "UPDATE blogs SET title=?, body =? , updated_at=? WHERE id = ?";
		PreparedStatement pstmt;
		try {
			pstmt = JNDIJDBCUtil.createPreparedStatement(query);
			pstmt.setString(1, blog.getTitle());
			pstmt.setString(2, blog.getBody());
			pstmt.setString(3, blog.getUpdated_at());
			pstmt.setInt(4, blog.getId());
			pstmt.execute();
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
	}

	@Override
	public void delete(int id) {
		String query = "DELETE FROM blogs WHERE id="+id;
		try {
			JNDIJDBCUtil.createPreparedStatement(query).execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Override
	public List<Blog> list() {
		String query = "SELECT * FROM blogs";
		List<Blog> blogs =  new ArrayList<>();
		try {
			ResultSet rs = JNDIJDBCUtil.createPreparedStatement(query).executeQuery();
			while(rs.next()){
				Blog blog = new Blog();
				blog.setId(rs.getInt("id"));
				blog.setTitle(rs.getString("title"));
				blog.setBody(rs.getString("body"));
				blog.setCreated_at(rs.getString("created_at"));
				blog.setUpdated_at(rs.getString("updated_at"));
				blogs.add(blog);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return blogs;
	}

}
