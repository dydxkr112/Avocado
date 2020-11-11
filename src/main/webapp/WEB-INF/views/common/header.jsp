<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	#loginbtn{
		border-radius: 10px; width: 80px; background-color: #6FCF97; border: 0px; height: 25px; color: white;
	}
	#logoutbtn{
		border-radius: 10px; width: 80px; background-color: #6FCF97; border: 0px; height: 25px; color: white;
	}
	
</style>
</head>
<body>
	<header>
		<div style="float: right; margin-right: 20px;">
			<c:if test="${loginUser == null }">
				<button id="loginbtn">로그인</button>
			</c:if>
			<c:if test="${loginUser != null }">
				<span style="font-size: 15px;">${loginUser.userName}님</span>
				<button id="logoutbtn">로그아웃</button>
			</c:if>
			<img src="resources/icon/alert.png" style="height: 20px;">
			<button id="test">test</button>
		</div>
	</header>
	<script>
		$(document).on("click", "#loginbtn", function(){
			location.href="loginMain.mem";
		});
		$(document).on("click", "#test", function(){
			location.href="test.mem";
		});
	</script>
</body>
</html>