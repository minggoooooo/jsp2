<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>

	 var name = prompt("당신의 이름은?","");
	 var height = prompt("당신의 신장은?","0");
	 var weight = prompt("당신의 몸무게는?","0");
	 var appropriate_weigth = (height-100) * 0.9;

	if(weight>=appropriate_weigth+5){
		document.write("과체중입니다.")
	} else if(weight<=appropriate_weigth-5){
		document.write("체중미달입니다.")
	} else{
		document.write("정상체중입니다.")
	}

	</script>
</body>
</html>