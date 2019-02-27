package com.yash.blogapp.util;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JNDIJDBCUtil {
	
private static Connection con = null;
private static PreparedStatement pstmt =null;
	
	private static Connection getConnection() throws Exception {
		Context context =  (Context) new InitialContext();
		Context envContext =(Context) context.lookup("java:comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/blogdb");
		con = ds.getConnection();

		return con;
	}
	
	public static PreparedStatement createPreparedStatement(String query) throws Exception{
		getConnection();
		pstmt = con.prepareStatement(query);
		return pstmt;
	}

}
