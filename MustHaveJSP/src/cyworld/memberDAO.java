package cyworld;

import common.JDBConnect2;

public class memberDAO extends JDBConnect2{

	public memberDAO() {
		super();
	}
	
	public int addMember(memberDTO dto) {
		int result =0;
		try {
			String sql = "insert into member (id, password, phone , email, isadmin) values (?, ?, ? ,? ,?)";
			psmt= con.prepareStatement(sql);
			psmt.setString(1, dto.getId());
			psmt.setString(2, dto.getPassword());
			psmt.setString(3, dto.getPhone());
			psmt.setString(4, dto.getEmail());
			psmt.setBoolean(5, dto.isIsadmin());
			result = psmt.executeUpdate();
			System.out.println("회원가입 성공");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("회원가입 실패");
		}
		
		return result;
	}
}
