package dao;

import java.util.ArrayList;

import common.JDBConnect;
import dto.bookinfoDTO;

public class bookinfoDAO extends JDBConnect{

	public bookinfoDAO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ArrayList<bookinfoDTO> getList() {
		ArrayList<bookinfoDTO> list = new ArrayList<bookinfoDTO>();
		bookinfoDTO dto = new bookinfoDTO();
		String sql = "select * from bookinfo";
		
		try {
			stmt= con.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				dto.setBookid(rs.getString(1));
				dto.setAuthor(rs.getString(2));
				dto.setBooktitle(rs.getString(3));
				dto.setBookcontent(rs.getString(4));
				dto.setBookprice(rs.getInt(5));
				dto.setBookdate(rs.getDate(6));
				dto.setMemberid(rs.getString(7));
				list.add(dto);
			}
			
			System.out.println("getList() 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("getList() 실패");
		}
		
		return list;
	}
	
	public bookinfoDTO detail(String id) {
		bookinfoDTO dto = new bookinfoDTO();
		String sql = "select * from bookinfo where bookid=?";
		
		try {
			psmt=con.prepareStatement(sql);
			psmt.setString(1, id);
			rs= psmt.executeQuery();
			if(rs.next()) {
				dto.setBookid(rs.getString(1));
				dto.setAuthor(rs.getString(2));
				dto.setBooktitle(rs.getString(3));
				dto.setBookcontent(rs.getString(4));
				dto.setBookprice(rs.getInt(5));
				dto.setBookdate(rs.getDate(6));
				dto.setMemberid(rs.getString(7));
			}
			
			System.out.println("detail() 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("detail() 실패");
		}
		
		return dto;
	}

	
}
