package model1.board;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO extends JDBConnect{
	
	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	public int selectCount(Map<String, Object> map) {
		int totalCount=0;
		
		String query = "select count(*) from board";	//갯수 세기
		
		if(map.get("searchWord")!= null) {	//검색 단어가 있다면
			query += " where " + map.get("searchField") +" "
					+ " like '%" + map.get("searchWord") +"%'";	
			//searchField =검색 분류 (종류) ex . 제목, 제목+내용,내용
			
		}
		
		try {
			stmt = con.createStatement();	//쿼리문 생성
			rs = stmt.executeQuery(query);	//쿼리문 실행
			rs.next();	//커서 첫번째 행으로 이동
			totalCount = rs.getInt(1); //첫번째 값인 게시물 개수를 가져옴
			System.out.println("게시물 개수 추출 성공");
		} catch (Exception e) {
			System.out.println("게시물 개수 오류");
			e.printStackTrace();
		}
		
		return totalCount;
	}
	
	public List<BoardDTO> selectList(Map<String, Object> map){
		List<BoardDTO> bbs = new Vector<>();
		
		String query = "select * from ( select Tb.*, rownum rNum from ( select * from board ";
		if(map.get("searchWord")!=null) {
			query += " where " + map.get("searchField") +" "
					+ "like '%" + map.get("searchWord") + "%'";
		}
		query += " order by num desc ) Tb ) where rNum between ? and ?";
		// 게시물 번호로 내림차순 정렬 (최근 게시물이 위로 오게 정렬)
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, map.get("start").toString());
			psmt.setString(2, map.get("end").toString());
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setId(rs.getString("id"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setVisitcount(rs.getString("visitcount"));
				bbs.add(dto);
			}
			
			System.out.println("게시물 조회 성공");
		} catch (Exception e) {
			System.out.println("게시물 조회 실패");
			e.printStackTrace();
		}
		
		return bbs;
		
		
	}
	public int insertWrite(BoardDTO dto) {
		int result = 0;
		
		try {
			String query = "insert into board(num,title,content,id,visitcount) values(seq_board_num.NEXTVAL,?,?,?,0)";
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getId());
			result = psmt.executeUpdate();
			
			System.out.println("글쓰기 성공");
		} catch (Exception e) {
			System.out.println("글쓰기 실패");
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 게시물 상세보기 메소드
	public BoardDTO selectView(String num) {
		BoardDTO dto = new BoardDTO();
		String query = "select B.*, M.name from member M inner join board B on M.id=B.id where num=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, num);
			rs = psmt.executeQuery();
			
			
			if(rs.next()) {
				dto.setNum(rs.getString(1));
				dto.setTitle(rs.getString(2));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));
				dto.setName(rs.getString("name"));
			}
			
			System.out.println("게시물 상세보기 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("게시물 상세보기 오류");
		}
		
		return dto;
	}
	
	//게시물의 조회수 증가 메소드
	public void updateVisitCount(String num) {
		
		String query = "update board set visitcount=visitcount+1 where num=?";
		
		try {
			psmt= con.prepareStatement(query);
			psmt.setString(1, num);
			psmt.executeQuery();
			
			System.out.println("게시물 조회수 증가");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("게시물 조회수 증가에 오류");
		}
		
	}
	
	//게시물 수정
	
	public int updateEdit(BoardDTO dto) {
		int result= 0;
		
		String query = "update board set title=?, content=? where num=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getTitle());
			psmt.setString(2, dto.getContent());
			psmt.setString(3, dto.getNum());
			result = psmt.executeUpdate();
			
			System.out.println("게시물 수정 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("게시물 수정 오류");
		}
		
		return result;
	}
	
	public int deletePost(BoardDTO dto) {
		int result= 0;
		String query = "delete from board where num =?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, dto.getNum());
			result = psmt.executeUpdate();
			
			
			System.out.println("게시물 삭제 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("게시물 삭제 실패");
		}
		
		
		return result;
	}
	
}
