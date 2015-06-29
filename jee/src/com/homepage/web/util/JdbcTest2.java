package com.homepage.web.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import oracle.jdbc.OracleDriver;

public class JdbcTest2 {
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String pass = "oracle";
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public Connection getConnection() throws NamingException, SQLException{
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext  = (Context)initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource)envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}
	
	public static void main(String[] args) {
		
		
		MemberBean bean = new MemberBean();
		JdbcTest2 test = new JdbcTest2();
		
		OracleDriver od = new OracleDriver();
		Properties info = new Properties();
		info.put("user", test.user);
		info.put("password", test.pass);
		
		try {
			conn = od.connect(test.url, info);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from member");
			while (rs.next()) {
				bean.setMemberId(rs.getString("MEMBERID"));
				bean.setAge(rs.getString("AGE"));
				bean.setPassword( rs.getString("PASSWORD"));
				bean.setName(rs.getString("NAME"));
				bean.setEmail(rs.getString("EMAIL"));
				
				System.out.print(bean.getMemberId() + "\t");
				System.out.print(bean.getPassword() + "\t");
				System.out.print(bean.getName() + "\t");
				System.out.print(bean.getAge() + "\t");
				System.out.print(bean.getEmail());
				System.out.println();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		}
	}
}


