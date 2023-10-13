package dao;

import java.util.ArrayList;

import common.JDBConnect;
import dto.testDTO;

public class testDAO extends JDBConnect{

	public testDAO() {
		super();
	}
	
	public ArrayList<testDTO> getScore() {
		ArrayList<testDTO> list = new ArrayList<>();
		
		String query = "select * from 시험 join 대학생 on 시험.학번 = 대학생.학번";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				testDTO dto = new testDTO();
				String grade = "";
				dto.setsNum(rs.getString(1));
				dto.setKor(rs.getInt(2));
				dto.setEng(rs.getInt(3));
				dto.setMath(rs.getInt(4));
				double score = (rs.getInt(2)+rs.getInt(3)+rs.getInt(4)) / 3 ;
				if(score>=90) {
					grade = "A";
				} else if (score>=80) {
					grade = "B";
				} else if (score>=70) {
					grade = "C";
				} else{
					grade = "F";
				}
				dto.setScore(grade);
				dto.setName(rs.getString("이름"));
				list.add(dto);
			}
		} catch (Exception e) {
			System.out.println("점수 불러오기 실패");
			e.printStackTrace();
		}
		
		return list;
	}
	public ArrayList<testDTO> searchScore(String a) {
		ArrayList<testDTO> list = new ArrayList<>();
		
		String query = "select * from 시험 join 대학생 on 시험.학번 = 대학생.학번";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next()) {
				testDTO dto = new testDTO();
				String grade = "";
				dto.setsNum(rs.getString(1));
				dto.setKor(rs.getInt(2));
				dto.setEng(rs.getInt(3));
				dto.setMath(rs.getInt(4));
				double score = (rs.getInt(2)+rs.getInt(3)+rs.getInt(4)) / 3 ;
				if(score>=90) {
					grade = "A";
				} else if (score>=80) {
					grade = "B";
				} else if (score>=70) {
					grade = "C";
				} else{
					grade = "F";
				}
				if(a==null || a=="" ) {
					dto.setScore(grade);
					dto.setName(rs.getString("이름"));
					System.out.println("특정 점수 불러오기 성공");
					list.add(dto);
					
				} else {
					if(!grade.equals(a)) continue;
					else {
						dto.setScore(grade);
						dto.setName(rs.getString("이름"));
						System.out.println("특정 점수 불러오기 성공");
						list.add(dto);
					}
				}
//				if(a!=null ) {
//					if(!grade.equals(a)) continue;
//					else {
//						dto.setScore(grade);
//						dto.setName(rs.getString("이름"));
//						System.out.println("특정 점수 불러오기 성공");
//						list.add(dto);
//					}
//				} else {
//					dto.setScore(grade);
//					dto.setName(rs.getString("이름"));
//					System.out.println("특정 점수 불러오기 성공");
//					list.add(dto);
//				}
			}
		} catch (Exception e) {
			System.out.println("특정 점수 불러오기 실패");
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	
	
}
