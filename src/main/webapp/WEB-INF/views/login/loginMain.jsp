<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		<table>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 50px;">
					���̵�
				</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<input type="text" placeholder="���̵� �Է��ϼ���" class="inputs"> 
					<br>
				</td>
			</tr>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 15px;">��й�ȣ</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<input type="text" placeholder="���̵� �Է��ϼ���" class="inputs"> 
				</td>
			</tr>
			<tr>
				<td style="padding-top: 15px;">
					<button class="logbtn">�α���</button>
				</td>
			</tr>
			<tr>
				<td style="padding-top: 20px;">
				<div align="center">
					<span>���̵�ã��</span>
					<span>��й�ȣã��</span>
					<span id="signUpbtn">ȸ������</span>
				</div>
				</td>
			</tr>
		</table>
	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script>
		$(document).on("click", "#signUpbtn", function(){
			location.href="signUpPage.mem";
		});
	</script>
</body>
</html>