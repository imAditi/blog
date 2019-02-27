package com.yash.blogapp.serviceimpl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.yash.blogapp.dao.UserDAO;
import com.yash.blogapp.daoimpl.UserDAOImpl;
import com.yash.blogapp.domain.User;
import com.yash.blogapp.service.UserService;
import com.yash.blogapp.util.JNDIConnectionPooling;
import com.yash.blogapp.util.SimpleJDBCUtil;

public class UserServiceImpl extends SimpleJDBCUtil implements UserService {
	 
	UserDAO userDAO = null;
	public UserServiceImpl() {
		userDAO = new UserDAOImpl();
	}
	@Override
	public void create(User user) {
		userDAO.insert(user);
	}

	@Override
	public void destroy(int id) {
		userDAO.delete(id);
	}

	@Override
	public void edit(User user) {
		userDAO.update(user);
	}

	@Override
	public User getUser(int id) {
		return userDAO.show(id);
	}

	@Override
	public List<User> listUsers() {
		return userDAO.list();
	}
	@Override
	public User authenticateUser(String email, String password) {
		User user = new User();
		
		try {
			String query = "SELECT * FROM users where email =? AND password=?";
			PreparedStatement pstmt = createPreparedStatement(query);
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			ResultSet rs =pstmt.executeQuery();
			if (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setFirstName(rs.getString("firstName"));
				user.setLastName(rs.getString("lastName"));
				user.setContact(rs.getLong("contact"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setRole(rs.getInt("role"));
				user.setStatus(rs.getInt("status"));
				user.setCreated_at(rs.getString("created_at"));
				user.setUpdated_at(rs.getString("updated_at"));
			}
			else {
				return null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	
	}

}
