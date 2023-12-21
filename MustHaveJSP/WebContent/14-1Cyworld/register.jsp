<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String error = "";
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/layout.css"/>
<link rel="stylesheet" href="resources/css/index.css"/>
<link rel="stylesheet" href="resources/css/register.css"/>
<script type="text/javascript" src="resources/js/register.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="center-layout-column">
	<div class="center-layout-column">
		<h2 id="error"></h2>
		<form action="#" method="post" name="frm">
			<div class="idbox">
				<label for="id"> 아이디 </label>
				<div>
				<input type="text" name="id" size="20" >
				<button type="button" onclick="#">중복확인</button>
				</div>
			</div>
			<div class="box">
				<label for="pw"> 비밀번호 </label>
				<input type="password" name="pw" size="8" >
			</div>
			<div class="box">
				<label for="pwcheck"> 비밀번호 확인 </label>
				<input type="password" name="pwcheck" size="8" >
			</div>
			<div class="emailbox">
				<label for="email"> 이메일 </label>
				<div>
				<input type="text" name="email"> <p style="font-size: 20px; padding-top: 5px;"> @ </p>
				<select name="email2">
					<option value="naver.com"> naver.com </option>
					<option value="google.com"> google.com </option>
					<option value="kakao.com"> kakao.com </option>
				</select>
				</div>
			</div>
			<div class="telbox">
				<label for="tel"> 전화번호 </label>
				<div>
				<select name="tel1" class="telsel">
					<option value="010"> 010
					<option value="011"> 011
					<option value="016"> 016
				</select>
				<input type="text" name="tel2">
				<input type="text" name="tel3">
				</div>
			</div>
			<div class="radiobox">
				<label for="grade"> 직급 </label>
				<div>
				<input type="radio" name="grade" value="normal"> 일반   
				<input type="radio" name="grade" value="admin"> 관리자
				</div>
			</div>
			<div class="center">
			<input type="button" class="btn" onclick="registerCheck();" value="회원가입"/>
			</div>
		</form>
	</div>

</body>

</html>