<%@page import="java.util.ArrayList"%>
<%@ page import ="dto.Car" %>
<%@page import="dto.CarRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
</head>
<body>
<body>
	<%@ include file="head.jsp" %>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품등록</h1>
		</div>
	</div>
	
	<div class="container">
		<form name ="newProduct" action="processAddProduct.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2">상품가격</label>
				<div class="col-sm-3">
					<input type="text" name="pirce" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">제조회사</label>
				<div class="col-sm-3">
					<input type="text" name="manufacturer" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상품명</label>
				<div class="col-sm-3">
					<input type="text" name="carName" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">자동차아이디</label>
				<div class="col-sm-3">
					<input type="text" name="carID" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">마력</label>
				<div class="col-sm-3">
					<input type="text" name="hp" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">연비</label>
				<div class="col-sm-3">
					<input type="text" name="fuelEfficiency" class="form-control">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-primary" value="등록">
				</div>
			</div>
		</form>
		
	</div>
	
	
	
</body>
</html>