package com.yash.blogapp.test;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.yash.blogapp.util.SimpleJDBCUtil;

public class SimpleJDBCTest  {

	public static void main(String[] args) throws SQLException {
		
		SimpleJDBCUtil jdbcUtil =new SimpleJDBCUtil();
		
		String query = "INSERT INTO blogs(title, body) VALUES ('TEST1','BODY OF TEST 1')";
		PreparedStatement pstmt = jdbcUtil.createPreparedStatement(query);
		pstmt.execute();
		System.out.println("success!");
	}

}