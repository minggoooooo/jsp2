<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/layout.css"/>
<link rel="stylesheet" href="resources/css/login.css"/>
<link rel="stylesheet" href="resources/css/index.css"/>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body class="center-layout-column">
	<div class="center-layout-column">
		<img class="logo" alt="logo" src="resources/img/cyworld.png"/>
		<div class="center-layout-column">
			<form action="#" method="post">
				<div class="box">
					<div class="input-wrapper">
						<label for="id">아이디</label>
						<input type="text" name="id"/>
					</div>
					<div class="input-wrapper">
						<label for="pw">비밀번호</label>
						<input type="password" name="pw"/>
					</div>
					<div class="right">
					<button type="submit">로그인</button>
					</div>
				</div>
			</form>
			<p class="register right">
				계정이 없으신가요? <a href="#" class=""> 회원가입 </a>
			</p>
		</div>
	</div>
<!-- <body class="center-layout">
	<div class="center-layout-column">
		<div>
		<img alt="logo" class="logo" src="resources/img/cyworld.png">
		</div>
		<div>
		<form action="login.do">
			<table>
				<tr>
					<td style="padding-right:70px">아이디</td>
					<td><input type="text" name="id" style="width:250px; height: 30px;"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td> <input type="password" name="pw" style="width:250px; height: 30px;"></td>
				</tr>
			</table>
			<input class="loginb" type="submit" value="로그인">
		</form>
		<p style="text-align: right; margin-top: 5px;"> 계정이 없으신가요? <a href="#" class="point">회원가입</a></p>
		</div>
	</div> -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>