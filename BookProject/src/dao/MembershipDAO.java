package dao;

import common.JDBConnect;
import dto.MembershipDTO;

public class MembershipDAO extends JDBConnect{
	
	public MembershipDAO() {
		super();
	}
	
	public MembershipDTO logincheck(String id) {
		MembershipDTO dto = new MembershipDTO();
		String sql = "select * from membership where memberid=?";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs= psmt.executeQuery();
			if(rs.next()) {
				dto.setMemberid(rs.getString("memberid"));
				dto.setMemberpw(rs.getString("memberpw"));
				dto.setMembername(rs.getString("membername"));
			}
			
			
			System.out.println("로그인 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("로그인 실패");
		}
				
		return dto;
	}
	
	public int addmember(MembershipDTO dto) {
		int result = 0;
		String sql = "insert into membership values(?,?,?,?,?)";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getMemberid());
			psmt.setString(2, dto.getMemberpw());
			psmt.setString(3, dto.getMembername());
			psmt.setString(4, dto.getMemberaddress());
			psmt.setString(5, dto.getMembertel());
			result= psmt.executeUpdate();
			
			System.out.println("회원가입 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원가입 실패");
		}
		
		
		return result;
	}
	
	public int deletemember(String id, String pw) {
		int result = 0;
		
		String sql = "delete from membership where memberid=? and memberpw=?";
		
		try {
			psmt=con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			result = psmt.executeUpdate();
			
			System.out.println("회원 탈퇴 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원 탈퇴 실패");
		}
		
		return result;
	}
	

}
