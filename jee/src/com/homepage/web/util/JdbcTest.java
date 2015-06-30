package com.homepage.web.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.homepage.member.beans.MemberBean;

import oracle.jdbc.OracleDriver;

public class JdbcTest {
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "system";
	String pass = "oracle";
	
	public static void main(String[] args) {
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sql = null;
		PreparedStatement pstmt = null;
		
		MemberBean bean = new MemberBean();
		JdbcTest test = new JdbcTest();
		
		OracleDriver od = new OracleDriver();
		Properties info = new Properties();
		info.put("user", test.user);
		info.put("password", test.pass);
		
		try {
			conn = od.connect(test.url, info);
			stmt = conn.createStatement();
			rs = stmt.executeQuery("select * from member");
			while (rs.next()) {
				bean.setId(rs.getString("MEMBERID"));
				bean.setAge(rs.getString("AGE"));
				bean.setPassword( rs.getString("PASSWORD"));
				bean.setName(rs.getString("NAME"));
				bean.setEmail(rs.getString("EMAIL"));
				
				System.out.print(bean.getId() + "\t");
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


