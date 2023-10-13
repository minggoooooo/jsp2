package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.jsp.JspWriter;


public class JDBConnect {
	
	public Connection con;
	public PreparedStatement psmt;
	public Statement stmt;
	public ResultSet rs;
	
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script =""
					+"<script>"
					+ " alert('" + msg + "'); "
					+ " history.back();"
					+ "</script>";
			out.println(script);
			// jspwriter out 변수로 메인으로 해서 out.메소드 사용한것
		} catch (Exception e) {
			
		}
		
	}
	
	public JDBConnect() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url ="jdbc:mysql://localhost:3306/member?"
					+ "useUnicode=true&characterEncoding=utf8";
			String id = "manager";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("db 연결 성공");
		} catch (Exception e) {
			System.out.println("db 연결 실패");
		}
	}
	
	public void close() {
		try {
			if(rs != null) con.close();
			if(psmt != null) psmt.close();
			if(con != null) con.close();
			System.out.println("db 연결 해제");
		} catch (Exception e) {
			System.out.println("연결 해제 오류");
		}
	}

}
