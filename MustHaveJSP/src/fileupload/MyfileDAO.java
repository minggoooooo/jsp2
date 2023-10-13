package fileupload;

import java.util.List;
import java.util.Vector;

import common.JDBConnect;

public class MyfileDAO extends JDBConnect{

	public MyfileDAO() {
		super();
	}

	public int insertFile(MyfileDTO dto) {
		int applyResult=0;
		
		try {
			String query = "insert into myfile values(seq_board_num.nextval, ?,?,?,?,?,default)";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getName());
			psmt.setString(2, dto.getTitle());
			psmt.setString(3, dto.getCate());
			psmt.setString(4, dto.getOfile());
			psmt.setString(5, dto.getSfile());
			applyResult = psmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("파일 insert 중 오류 발생");
		}
		
		
		return applyResult;
	}
	
	public List<MyfileDTO> myFileList() {
		List<MyfileDTO> fileList = new Vector<>();
		
		String query = "select * from myfile order by idx desc";
		
		try {
			psmt = con.prepareStatement(query);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				MyfileDTO dto = new MyfileDTO();
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setCate(rs.getString(4));
				dto.setOfile(rs.getString(5));
				dto.setSfile(rs.getString(6));
				dto.setPostdate(rs.getString(7));
				
				fileList.add(dto);
				
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			System.out.println("목록 가져오기 실패");
		}
		
		
		return fileList;
		
	}
	
	
	
	
	
	
}















