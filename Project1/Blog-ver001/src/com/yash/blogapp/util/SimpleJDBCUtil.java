package com.yash.blogapp.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

/**
 * This is a simple JDBC Utility class that is used for getting
 * PreparedStatement object. This class will be responsible for closing
 * connection and PreparedStatement object. Connection object should be auto
 * closed. Connection object should not be exposed outside. This class will be
 * used for DAO and Service testing purpose.
 * 
 * @author deeksha.sethi
 *
 */
public  class SimpleJDBCUtil {
	private static Properties prop = new Properties();
	private  Connection con = null;
	private  PreparedStatement pstmt = null;
	/**
	 * loading properties file to get JDBC detail this static block should load the
	 * driver
	 */
	static {

		try {
			InputStream in = new FileInputStream("C:\\Users\\Aditi.Jain\\Desktop\\Project1\\Blog-ver001\\jdbc.properties");
			try {
				prop.load(in);
				try {
					Class c = Class.forName(prop.getProperty("jdbc.driverClassName"));
					System.out.println("class----" + c);
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * This method returns the connection object it should get the JDBC detail from
	 * prop object
	 * 
	 * @return
	 */
	private   Connection connect() {
		try {
			//System.out.println("inside the connect method ");
			if (con == null) {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(prop.getProperty("jdbc.url"),"root",
						"root");
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//System.out.println("returning the con object");
		return con;
	}

	public  PreparedStatement createPreparedStatement(String query) {
		try {
			//System.out.println("inside the preparestmnt method");
			connect();
			pstmt = con.prepareStatement(query);
			
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
				}
		//System.out.println("Before returing pstmt");
		return pstmt;
	}

	public void closeConnection()  {
		try {
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void closePreparedStatement() {
		try {
			closeConnection();
			pstmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
