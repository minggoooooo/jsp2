<%@page import="fileupload.MyfileDTO"%>
<%@page import="fileupload.MyfileDAO"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>DB에 등록된 파일 목록 보기</h2>
	<a href="FileUploadMain.jsp">파일 등록하기</a>
	<%
	MyfileDAO dao = new MyfileDAO();
	List<MyfileDTO> fileLists = dao.myFileList();
	dao.close();
	%>
	<table border="1">
		<tr>
			<th>No</th> <th> 작성자</th> <th>제목</th> <th> 카테고리</th>
			<th>원본 파일명</th> <th> 저장된 파일명</th> <th>작성일</th> 
		</tr>
	<c:forEach var="list" items="<%=fileLists %>">
		<tr>
			<td>${list.idx}</td>
			<td>${list.name}</td>
			<td>${list.title}</td>
			<td>${list.cate}</td>
			<td>${list.ofile}</td>
			<td>${list.sfile}</td>
			<td>${list.postdate}</td>
		</tr>
	</c:forEach>	
	</table>
</body>
</html>