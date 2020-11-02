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
	.inputs{
		width: 400px; 
		height: 40px; 
		font-size: 12px; 
		padding-left:8px; 
		border: 1px solid #C4C4C4;
		border-radius: 3px;
	}
	.logbtn{
		width: 100%; height: 50px; color: white; background-color: #22AC38; border: 0px; border-radius: 2px;
	}
	span{
		margin-left: 15px; color: gray; font-size: 12px; margin-right: 15px;
	}
	span:hover{
		font-size: 13px;
		color: #22AC38;
		cursor: pointer;
	}
</style>
</head>
<body>
	<div align="center" style="margin-top: 60px;">
		<img src="resources/images/mainLogo.png" style="height: 70px;">
		<br>
		<form method="post" action="loginCheck.mem">
		
		<table>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 50px;">
					아이디
				</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<input type="text" placeholder="아이디를 입력하세요" class="inputs" name="userId"> 
					<br>
				</td>
			</tr>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 15px;">비밀번호</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<input type="text" placeholder="아이디를 입력하세요" class="inputs" name="userPwd"> 
				</td>
			</tr>
			<tr>
				<td style="padding-top: 15px;">
					<button class="logbtn">로그인</button>
				</td>
			</tr>
			<tr>
				<td style="padding-top: 20px;">
				<div align="center">
					<span>아이디찾기</span>
					<span>비밀번호찾기</span>
					<span id="signUpbtn">회원가입</span>
				</div>
				</td>
			</tr>
		</table>
		</form>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script>
		$(document).on("click", "#signUpbtn", function(){
			location.href="signUpPage.mem";
		});
	</script>
</body>
</html>