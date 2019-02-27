package com.yash.blogapp.serviceimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.util.SimpleJDBCUtil;

public class BlogServiceImpl extends SimpleJDBCUtil implements BlogService {

	BlogDAO blogDAO = null;
	
	public BlogServiceImpl() {
		blogDAO=new BlogDAOImpl(); //dependency injection
	}
	@Override
	public void create(Blog blog) {
		
		blogDAO.insert(blog);

	}
	@Override
	public void destroy(int id) {
		
		blogDAO.delete(id);
		
	}
	@Override
	public void edit(Blog blog) {
		
		blogDAO.update(blog);
		
	}
	@Override
	public Blog getBlog(int id) {
		
		return blogDAO.show(id);
	}
	@Override
	public List<Blog> listBlogs() {
		
		return blogDAO.list();
	}
	
	@Override
	public List<Blog> deletedBlogs() {
		List<Blog> list = blogDAO.deletedBlog();
		return list;
	}
	
	
	
	@Override
	public List<Integer> deletedBlogAcrMonths() {
		List<Integer> list = blogDAO.deletedBlogAcrMonths();
		return list;
	}

	@Override
	public List createdBlogAcrMonths() {
		List<Integer> createdBlogAcorMonths = blogDAO.createdBlogAcrMonths();
		return createdBlogAcorMonths;
	}

	@Override
	public int deletedBlogAcrMonthsCount() {

		return blogDAO.deletedBlogAcrMonthsCount();
	}

	@Override
	public int createdBlogAcrMonthsCount() {
	
		return blogDAO.createdBlogAcrMonthsCount();
	}
	@Override
	public List<Blog> listAllBlogs() {
		
		return blogDAO.listAllBlogs();
	}
	@Override
	public void createBlog(Blog blog, String[] categories) {
		blogDAO.createBlog(blog,categories);
		
	}
	 public List<Blog> list(int cat_id){
		 
		 List<Blog> blogs= new ArrayList<>();
			Blog blog;
			try {
				ResultSet rs=createPreparedStatement("select blog_id from blogcategories where category_id ="+cat_id).executeQuery();
			while(rs.next())
			{
				int id =rs.getInt("blog_id");
				blog=getBlog(id);
				blogs.add(blog);
			}
							
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
			return blogs;
	 }
	 
	

}
