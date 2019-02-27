package com.yash.blogapp.daoimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.yash.blogapp.dao.UserDAO;
import com.yash.blogapp.domain.User;
import com.yash.blogapp.rowmapper.UserRowMapper;
import com.yash.blogapp.util.DateUtil;
import com.yash.blogapp.util.SimpleJDBCUtil;
/**
 * this will perform implementation of all the CRUD operations.
 * @author Aditi.Jain
 *
 */
public class UserDAOImpl extends SimpleJDBCUtil implements UserDAO {

	@Override
	public void insert(User user) {
		try {
			PreparedStatement pstmt =createPreparedStatement("insert into users(firstName,lastName,contact,email,password,created_at,updated_at) values ('" + user.getFirstName() + "','" + user.getLastName() + "' ,'"+user.getContact()+"' ,'"+user.getEmail()+ "' ,'"+user.getPassword()+ "' ,'"+user.getCreated_at()+ "' ,'"+user.getUpdated_at()+"')");
			pstmt.execute();
			System.out.println("query inserted");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public User show(int id) {
		String query = "SELECT * FROM users WHERE id ="+id;
		User user = new User();
		try {
		ResultSet rs =	createPreparedStatement(query).executeQuery();
		 UserRowMapper userRowMapper =new UserRowMapper();
		 user = userRowMapper.maprow(rs,user);
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	
		
	}

	@Override
	public void update(User user) {
		String query ="UPDATE users SET role=?,status=?,updated_at=? WHERE id=?";
		PreparedStatement pstmt =createPreparedStatement(query);
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
   		String updated_at = new DateUtil().convertDatetoString(formatter, new Date());
		try {
			pstmt.setInt(1, user.getRole());
			pstmt.setInt(2, user.getStatus());
			//pstmt.setString(3, user.getUpdated_at());
			pstmt.setString(3, updated_at);
			pstmt.setInt(4, user.getId());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public void delete(int id) {
		String query = "Delete from users where id ="+id;
		try {
			createPreparedStatement(query).execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<User> list() {
     List<User> users = new ArrayList();
		
		try {
		ResultSet rs =	createPreparedStatement("select * from users").executeQuery();
		while(rs.next()) {
			User user = new User();
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
			users.add(user);
			
			
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return users;
	}

	
}
