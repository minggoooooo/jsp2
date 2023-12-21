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
  var num=1;
  var t="<table border=1>";
  
  for(var i=1; i<= 5; i++) {	//var i=1 후에 컴마가 아니라 세미콜론을 써야 함 또한 25 * 25번 반복이 아니라 5*5번 반복이니 수를 조정함
	  
    t+="<tr>";

    for(var j = num; j <= num + 4; j++) { // <td>num</td> 을 통해 각 열의 각 행에 숫자가 하나씩 들어가게 바꿈
      t += "<td>" + j + "</td>";
    }
      num+=5;
    t+="</tr>";
  }
 t+="</table>";
 document.write(t);

</script>
</body>
</html>