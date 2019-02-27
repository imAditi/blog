package com.yash.blogapp.test;


import com.yash.blogapp.dao.BlogDAO;
import com.yash.blogapp.daoimpl.BlogDAOImpl;
import com.yash.blogapp.domain.Blog;
import com.yash.blogapp.service.BlogService;
import com.yash.blogapp.serviceimpl.BlogServiceImpl;
import com.yash.blogapp.util.DateUtil;

public class BlogDAOImplShowOperationTest {

	public static void main(String[] args) {
		
		/*BlogDAO blogDao = new BlogDAOImpl();
		Blog blog = blogDao.show(3);
		System.out.println("Title : "+blog.getTitle());
		System.out.println("Body : "+blog.getBody());
		
		String created_date = new DateUtil().convertDateStringToString(blog.getCreated_at());
		String updated_date = new DateUtil().convertDateStringToString(blog.getUpdated_at());
		//System.out.println(new Date());
		System.out.println("Created at : "+created_date);
		System.out.println("Updated at : "+updated_date);*/
		
		BlogService blogService=new BlogServiceImpl();
		
		System.out.println(blogService.createdBlogAcrMonths());
		
	}

}
