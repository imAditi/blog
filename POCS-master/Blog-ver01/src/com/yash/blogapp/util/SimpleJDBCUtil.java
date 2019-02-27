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
 * This is a sample JDBC Utility class that is used for getting
 * PreparedStatement object This class will be responsible for closing
 * connection and PrepareStatement object. Connection object should be auto
 * closed. Connection object should not be exposed outside This class will be
 * used for DAO and Service testing purpose.
 * 
 * @author sharma.pankaj
 *
 */
public abstract class SimpleJDBCUtil {
	private static Properties prop = new Properties();
	private  Connection con = null;
	private  PreparedStatement pstmt = null;

	/**
	 * loading properties file to get jdbc detail. This static bloc should load
	 * the driver.
	 */
	static {

		try {
			InputStream in = new FileInputStream("src/jdbc.properties");
			try {
				prop.load(in);
				try {
					Class c = Class.forName(prop.getProperty("jdbc.driverClassName"));
					//Class.forName(driverClassName);
					

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
	 * This method returns the connection object. it should get the jdbc detail
	 * from prop object.
	 * 
	 * @return
	 */
	private Connection connect() {
		try {
			if (con == null) {
				String url = prop.getProperty("jdbc.url");
				String userName = prop.getProperty("jdbc.userName");
				String password = prop.getProperty("jdbc.password");
				con = DriverManager.getConnection(url, userName, password);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		return con;
	}

	/**
	 * this method will return the object of PreparedStatement if created
	 * otherwise error message will be reported
	 * 
	 * @param query
	 *            to be executed by PreparedStatement
	 * @return PreparedStatement object if created other wise reporting error
	 *         message
	 */
	public  PreparedStatement createPreparedstatement(String query) {
		try {
			connect();
			pstmt = con.prepareStatement(query);
			return pstmt;
		} catch (SQLException ex) {
			throw new RuntimeException(ex.getMessage());
		}

	}

	private void closeConnection() {
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
