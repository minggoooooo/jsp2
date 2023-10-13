<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! String a = ""; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<Style>
	#container{
	 width : 800px;
	 height : 400px;
	 border: 2px solid green;
	 margin : 0 auto;
	 padding: 20px;
	}
	#center{
		margin : 0 auto;
	}
	h2{
	margin: 0 auto;
	}
</Style>
</head>
<body>
	<div id="container">
	<div id = "center">
	<h2> 회원 가입 </h2>
	<form action="addProcess.jsp" method="post">
	<table>
		<tr>
		<td>아이디</td>
		<td><input type="text" name="id"> </td>
		</tr>
		<tr>
		<td>이름</td> 
		<td><input type="text" name="name"></td>
		</tr>
		<tr>
		<td>비밀번호</td>
		<td> <input type="password" name="password"></td>
		</tr>
		<tr>
		<td>비밀번호 확인</td>
		<td><input type="password" name="password_check"></td>
		</tr>
		<tr>
		<td>전화번호</td>
		<td><input type="text" name="phoneNum"></td>
		</tr>
		<tr>
		<td>이메일</td>
		<td><input type="text" name="email1"> @ 
		<select id ="selbox" name="email2"> 
			<option value="direct"> 직접입력 </option>
			<option value="naver.com"> naver.com </option>
			<option value="daum.net"> daum.net </option>
			<option value="gmail.com"> gmail.com </option>
		</select> </td>
		</tr>
		<tr>
		<td>문자수신 여부</td>
		<td>	<input type="radio" name="text" value="Y" checked> 예
					<input type="radio" name="text" value="N">  아니오 </td>
		</tr>
		<tr>
		<td>가입 경로 </td>	
		<td>	<input type="checkbox" name="commend"  value="친구소개" >  친구 소개
			<input type="checkbox" name="commend"  value="인터넷검색" > 인터넷 검색
			<input type="checkbox" name="commend"  value="블로그" > 블로그
			<input type="checkbox" name="commend"  value="기타" > 기타 </td>
		</tr>
		<tr><td>가입하기</td><td> <input type="submit" value="전송"></td></tr>
	</table>
	</form>
	</div>
	</div>
</body>
</html>