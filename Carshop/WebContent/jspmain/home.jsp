<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String hello = "어서오세요 럭셔리 자동차 몰에 오신걸 환영합니다";%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../resources/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="head.jsp" %>
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-5">
					<%=hello %>
				</h1>
			 </div>
		</div>
		<div class="container">
		
		</div>
</body>
</html>