<%@page import="model1.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="model1.board.BoardDAO"%>
<%@page import="utils.BoardPage" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	BoardDAO dao = new BoardDAO(application);	//db연결
	Map<String, Object> param = new HashMap<>();
	
	// 사용자가 입력한 검색필드와 검색단어를 저장함.
	String searchField = request.getParameter("searchField");
	String searchWord = request.getParameter("searchWord");
	
	if(searchWord != null){
		param.put("searchField", searchField);
		param.put("searchWord", searchWord);
	}
	
	int totalCount = dao.selectCount(param);	//전체 게시물 개수 저장
	int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
	// 웹 파일에서 설정한 한 페이지 당 게시물 개수 저장 (10개)
	int blockPage = Integer.parseInt(application.getInitParameter("POSTS_PER_BLOCK"));
	// 웹 파일에서 설정한 페이지 번호 출력수 저장 (5개)
	int totalPage = (int)Math.ceil((double)totalCount/pageSize);
	// 전체 페이지 개수 저장
	
	int pageNum = 1;
	String pageTemp = request.getParameter("pageNum");
	// 사용자가 클릭한 페이지 번호를 가져와 pageNum에 저장함
	if(pageTemp != null && !pageTemp.equals(""))
		pageNum = Integer.parseInt(pageTemp);
	
	// 각 페이지의 시작 번호와 끝 번호를 설정
	int start = (pageNum-1) * pageSize + 1;
	int end = pageNum * pageSize;
	param.put("start", start);
	param.put("end", end);
	
	
	List<BoardDTO> boardLists = dao.selectList(param);	
	// 게시물 목록 받아서 저장
	dao.close();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page = "../Common/Link.jsp"/>
	
	<h2> 목록 보기 - 현재 페이지 : <%= pageNum %> (전체 : <%= totalPage %>) </h2>
	<form method="get">
		<table border="1" width="90%">
			<tr>
				<td align="center">
					<select name = "searchField">
						<option value="title"> 제목 </option>
						<option value="content"> 내용 </option>
					</select>
					<input type="text" name="searchWord"> 
					<input type="submit" value="검색하기">
				</td>
			</tr>
		</table>
	</form>
	<table border="1" width="90%">
		<tr>
			<th width="10%"> 번호</th>
			<th width="50%"> 제목</th>
			<th width="15%"> 작성자</th>
			<th width="10%"> 조회수</th>
			<th width="15%"> 작성일</th>
		</tr>
		
		<%
			if(boardLists.isEmpty()){
				// 게시물 목록이 비어있을 때 처리 구문
			
		%>
			<tr>
				<td colspan="5" align="center">
					검색된 내용이 없습니다.
				</td>
			</tr>
		<%} else {
			int virtualNum = 0;
			int countNum= 0;
			//가상번호 생성(db에 있는 num x , 화면상에서 번호)
			for(BoardDTO dto : boardLists){
				virtualNum = totalCount - (((pageNum - 1) * pageSize) + countNum++);
		%>
			<tr align="center">	
				<td><%=virtualNum %></td>
				<td align ="left">
					<a href ="view.jsp?num=<%=dto.getNum()%>"> <%=dto.getTitle() %></a>
				</td>
				<td align="center"><%=dto.getId() %></td>
				<td align="center"><%=dto.getVisitcount() %></td>
				<td align="center"><%=dto.getPostdate() %></td>
			</tr>
			<% 
			}
		} %>
	</table>
	<table border="1" width="90%">
		<tr align ="center">
			<td>
				<%= BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, request.getRequestURI()) %>
			</td>
			<td>
				<button type="button" onclick="location.href='Write.jsp';">글쓰기</button>
			</td>
		</tr>
	</table>
</body>
</html>