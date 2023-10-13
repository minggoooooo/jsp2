<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#trav{
		font-size: 30px;
	}
	#sbm{
		margin-top: 20px;
		font-size: 25px;
	}
</style>
</head>
<body>
	<h1> 가을 최고 여행지는 ?</h1>
	<form action="responseProcess.jsp" method="get">
	<select name="travel" id="trav">
		<option value="response2.jsp"> 여행지 </option>
		<option value="https://www.expedia.co.kr/Flights-Search?flight-type=on&mode=search&trip=roundtrip&leg1=from%3A%EC%84%9C%EC%9A%B8+%28ICN+-+%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cto%3A%EB%B3%B4%EB%9D%BC%EC%B9%B4%EC%9D%B4%2C+%EC%84%9C+%EB%B9%84%EC%9E%90%EC%95%BC%EC%8A%A4%2C+%ED%95%84%EB%A6%AC%ED%95%80%2Cdeparture%3A2023.09.19TANYT&options=cabinclass%3Aeconomy&leg2=from%3A%EB%B3%B4%EB%9D%BC%EC%B9%B4%EC%9D%B4%2C+%EC%84%9C+%EB%B9%84%EC%9E%90%EC%95%BC%EC%8A%A4%2C+%ED%95%84%EB%A6%AC%ED%95%80%2Cto%3A%EC%84%9C%EC%9A%B8+%28ICN+-+%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cdeparture%3A2023.09.20TANYT&passengers=children%3A0%2Cadults%3A1%2Cseniors%3A0%2Cinfantinlap%3AY&fromDate=2023.09.19&toDate=2023.09.20&startDate=2023-09-19&endDate=2023-09-20"> 보라카이 </option>
		<option value="https://www.expedia.co.kr/Flights-Search?leg1=from%3A%EC%84%9C%EC%9A%B8%20%28ICN-%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cto%3A%EC%84%B8%EB%B6%80%20%28CEB%20-%20%EB%A7%89%ED%83%84-%EC%84%B8%EB%B6%80%20%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cdeparture%3A2023.09.19TANYT&leg2=from%3A%EC%84%B8%EB%B6%80%20%28CEB%20-%20%EB%A7%89%ED%83%84-%EC%84%B8%EB%B6%80%20%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cto%3A%EC%84%9C%EC%9A%B8%20%28ICN-%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cdeparture%3A2023.09.20TANYT&mode=search&options=carrier%3A%2Ccabinclass%3A%2Cmaxhops%3A1%2Cnopenalty%3AN&pageId=0&passengers=adults%3A1%2Cchildren%3A0%2Cinfantinlap%3AN&trip=roundtrip"> 세부 </option>
		<option value="https://www.expedia.co.kr/Flights-Search?leg1=from%3A%EC%84%9C%EC%9A%B8%20%28ICN-%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cto%3A%ED%8C%8C%EB%A6%AC%20%28CDG%20-%20%EB%A1%9C%EC%8B%9C-%EC%83%A4%EB%A5%BC%EB%93%9C%EA%B3%A8%20%EA%B3%B5%ED%95%AD%29%2Cdeparture%3A2023.09.19TANYT&leg2=from%3A%ED%8C%8C%EB%A6%AC%20%28CDG%20-%20%EB%A1%9C%EC%8B%9C-%EC%83%A4%EB%A5%BC%EB%93%9C%EA%B3%A8%20%EA%B3%B5%ED%95%AD%29%2Cto%3A%EC%84%9C%EC%9A%B8%20%28ICN-%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cdeparture%3A2023.09.20TANYT&mode=search&options=carrier%3A%2Ccabinclass%3A%2Cmaxhops%3A1%2Cnopenalty%3AN&pageId=0&passengers=adults%3A1%2Cchildren%3A0%2Cinfantinlap%3AN&trip=roundtrip"> 파리 </option>
		<option value="https://www.expedia.co.kr/Flights-Search?leg1=from%3A%EC%84%9C%EC%9A%B8%20%28ICN-%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cto%3A%EB%9F%B0%EB%8D%98%20%28LHR%20-%20%ED%9E%88%EB%93%9C%EB%A1%9C%20%EA%B3%B5%ED%95%AD%29%2Cdeparture%3A2023.09.19TANYT&leg2=from%3A%EB%9F%B0%EB%8D%98%20%28LHR%20-%20%ED%9E%88%EB%93%9C%EB%A1%9C%20%EA%B3%B5%ED%95%AD%29%2Cto%3A%EC%84%9C%EC%9A%B8%20%28ICN-%EC%9D%B8%EC%B2%9C%EA%B5%AD%EC%A0%9C%EA%B3%B5%ED%95%AD%29%2Cdeparture%3A2023.09.20TANYT&mode=search&options=carrier%3A%2Ccabinclass%3A%2Cmaxhops%3A1%2Cnopenalty%3AN&pageId=0&passengers=adults%3A1%2Cchildren%3A0%2Cinfantinlap%3AN&trip=roundtrip"> 런던 </option>
	</select>
		<br>
		<input type="submit" value="제출" id="sbm">
	</form>

</body>
</html>