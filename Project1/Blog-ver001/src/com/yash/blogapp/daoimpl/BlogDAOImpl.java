package com.yash.blogapp.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.rowmapper.BlogRowMapper;
import com.yash.blogapp.util.DateUtil;
import com.yash.blogapp.util.SimpleJDBCUtil;
/**
 * this will perform implementation of all the CRUD operations.
 * @author Aditi.Jain
 *
 */
public class BlogDAOImpl extends SimpleJDBCUtil implements BlogDAO {
/**
 * this method will insert a blog into database
 */
	@Override
	public void insert(Blog blog) {
		
		try {
			
			PreparedStatement pstmt = createPreparedStatement("insert into blogs(title,body,created_at,updated_at) values ('" + blog.getTitle() + "','" + blog.getBody() + "' ,'"+blog.getCreated_at()+ "' ,'"+blog.getUpdated_at()+"')");
			pstmt.execute();
			System.out.println("query inserted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
/**
 * This method will show a blog on the basis of mentioned id
 */
	@Override
	public Blog show(int id) {
		String query = "SELECT * FROM blogs WHERE id ="+id;
		Blog blog = new  Blog();
		try {
		ResultSet rs =	createPreparedStatement(query).executeQuery();
		 BlogRowMapper blogrowmapper =new BlogRowMapper();
		 blog = blogrowmapper.maprow(rs,blog);
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return blog;
	}
/**
 * this method will  update a particular blog on the basis of id
 */
	@Override
	public void update(Blog blog) {
		String query ="UPDATE blogs SET title=?,body =?,updated_at=? WHERE id=?";
		PreparedStatement pstmt =createPreparedStatement(query);
		//SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   		//String updated_at = new DateUtil().convertDatetoString(formatter, new Date());
		try {
			pstmt.setString(1, blog.getTitle());
			pstmt.setString(2, blog.getBody());
			pstmt.setString(3, blog.getUpdated_at());
			//pstmt.setString(3, updated_at);
			pstmt.setInt(4, blog.getId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}
/**
 * this method will delete a blog on the basis of id
 */
	@Override
	public void delete(int id) {
		String query = "Delete from blogs where id ="+id;
		try {
			createPreparedStatement(query).execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
/**
 * this method will list all the blogs
 */
	@Override
	public List<Blog> list() {
		List<Blog> blogs = new ArrayList();
		
		try {
		ResultSet rs =	createPreparedStatement("select * from blogs").executeQuery();
		while(rs.next()) {
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
		}
		
		return blogs;
	}

}
