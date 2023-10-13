<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% //드롭박스 목록 만들어서 과일선택. 당신이 좋아하는 과일은 ㅇㅇ 입니다 보내기.
		String none = request.getParameter("none");
		if(none != null){
			out.println(none);
		}
	%>
	<h1> 좋아하는 과일을 선택하세요!!!</h1>
	<form action="choiceResult.jsp" method="post">
		<select id="fruit" name="fruit" size="1">
		<option value=""> 선택하세요. </option>
		<option value="사과"> 사과 </option>
		<option value="배"> 배 </option>
		<option value="망고"> 망고 </option>
		<option value="복숭아"> 복숭아 </option>
		<option value="자두"> 자두 </option>
		<option value="none"> 없음 </option>
		</select>
		<br>
		<input type="submit" value="보내기"> 
	</form>
</body>
</html>