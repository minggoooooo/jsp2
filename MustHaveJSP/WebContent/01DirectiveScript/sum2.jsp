<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!  
	public int sumFt(){
	int sum=0;
	 for(int i=1; i<101; i++){
	 sum += i;
 }
	 return sum;
}
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		//1~100까지 합계 출력
		// 선언문 합계 함수 생성
		// body 함수 호출 ->스클릿틀립으로
		// 합계 결과를 표현식 이용해서 <%=
		int k = sumFt();
	%>
	<h1> 합계 결과는 <%= k %> 입니다.</h1>
</body>
</html>