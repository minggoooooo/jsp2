<%@page import="common.BoardPage"%>
<%@page import="dto.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "LoginCheck.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	request.setCharacterEncoding("utf-8");
	BoardDAO dao = new BoardDAO();
	String sel = request.getParameter("sel");
	if(sel!=null){
  		session.setAttribute("sel", sel);
  		sel = session.getAttribute("sel").toString();
	} else {
  			sel="id";
  		if(session.getAttribute("sel")!=null){
  			sel= session.getAttribute("sel").toString();
  		}
  	} 
	String text = request.getParameter("text");
	if(text!=null){
  		session.setAttribute("text", text);
  		text = session.getAttribute("text").toString();
	} else {
		text="";
		if(session.getAttribute("text")!=null){
  		text = session.getAttribute("text").toString();
		}
	} 
	int totalCount=dao.searchCount(sel, text);
	// 게시물 전체 개수
	int postPage = Integer.parseInt(application.getInitParameter("POST_PAGE"));
	// 한 페이지 게시물 개수 (20)
	int blockCount = Integer.parseInt(application.getInitParameter("BLOCK_COUNT"));
	// 하단 표시 페	이지 숫자 (10)
	int totalPage = (int)Math.ceil((double)totalCount/ postPage);
	//게시물 페이지 전체 개수
	List<BoardDTO> BoardLists = new ArrayList<>();
	int pageNum = 1;	// 기본 페이지 번호는 1로 세팅
	String pageTemp = request.getParameter("pageNum");
	if(pageTemp != null && !pageTemp.equals("")){
	pageNum= Integer.parseInt(pageTemp);
	}
	int blockPage = pageNum;
	blockPage = (blockPage - (pageNum-1)%10);
	int x = (pageNum -1 ) * postPage + 1;
	int virtualNum = totalCount -x +1;
	
	BoardLists = dao.searchList(x, sel, text);
	
	dao.close();
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 #a a{
 	color: black;
 }
</style>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="menu.jsp" %>
	<%@ include file="LoginCheck.jsp" %>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>
	<div class="container">
		<table border="1" width="100%">
			<tr align = "center">
				<th width="10%">번호</th>
				<th width="50%">제목</th>
				<th width="15%">아이디</th>
				<th width="10%">조회수 <%=sel %></th>
				<th width="15%">작성일 <%=text %></th>
			</tr>
			<%
				for(BoardDTO bto : BoardLists){
					
				
			%>
 			<tr align="center">
				<td> <%=virtualNum %></td>
				<td> <a href="View.jsp?num=<%=bto.getNum()%>"><%=bto.getTitle() %></a> </td>
				<td> <%=bto.getId() %></td>
				<td> <%=bto.getVisitcount() %></td>
				<td> <%=bto.getPostdate() %></td>
			</tr>
				<% virtualNum--;
				}%> 
	<%-- 	<c:set var= "board"  value= "<%=BoardLists %>" scope="request"/>
		
		<tr align="center">
			<td> ${board[0].num } </td>
			<td> ${board[0].title } </td>
			<td> ${board[0].content } </td>
			<td> ${board[0].id } </td>
			<td> ${board[0].postdate } </td>
		</tr> --%>
		</table>
		
		<table border="1" width="90%" name="a">
		<c:set var="pageNum" value="<%=pageNum %>"/>
		<c:set var="blockPage" value="<%=blockPage %>"/>
		<c:set var="totalPage" value="<%=totalPage %>"/>
			<c:if test="${blockPage > 10 }">
				<a href="boardmain.jsp?pageNum=${blockPage-1}"> [이전 블록]</a>
			</c:if>
			<c:if test="${pageNum>1 }">
				<a href="boardmain.jsp?pageNum=${pageNum-1 }"> [이전 페이지]</a>
			</c:if>
		<c:forEach var="i" begin="<%=blockPage %>" end="<%=blockPage +9 %>">
				<c:choose> 
				<c:when test= "${i eq pageNum}"> <span style= color:red; > [${i}]</span> </c:when>
				<c:when test= "${i != pageNum && i <=totalPage}"> <a style= color:black; href="boardmain.jsp?pageNum=${i }" > [${i }]</a> </c:when>
				</c:choose>
		</c:forEach>
			<c:if test="${pageNum < totalPage }">
				<a href="boardmain.jsp?pageNum=${pageNum+1 }"> [다음 페이지]</a>
			</c:if>
			<c:if test="${blockPage < totalPage-(totalPage%10)+1 }">
				<a href="boardmain.jsp?pageNum=${pageNum-((pageNum-1)%10)+10 }"> [다음 블록]</a>
			</c:if>
		<%-- <tr align= "center">
			<td colspan="5">
				<%= BoardPage.pagingStr(totalCount, postPage, blockCount, pageNum, request.getRequestURI()) %>
			</td> --%>
	<%-- 		<td colspan="10">
				<% for (int i=1; i<=10; i++){ %>
					<a href="boardmain.jsp?pageNum=<%=i %>"> <%=i %></a> &nbsp;
				<%} %>
			</td>
		</tr> --%>
		<tr align= "center">
			<td colspan="5">
			<form action="boardmain.jsp" method="get">
				<select name="sel" class="txt">
					<option value="id"> 아이디 </option>
					<option value="title"> 제목 </option>
				</select>
				<input type ="text" name="text">
				<input type ="submit" class="btn btn-primary" value="검색">
				</form>
			</td>
		</tr>
		</table>
			<br>
				<button type="button" onclick="location.href='Write.jsp';">  글쓰기 </button>
		
	</div>
</body>
</html>