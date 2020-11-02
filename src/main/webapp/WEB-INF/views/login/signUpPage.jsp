<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	.inputs2{
		width: 100px; 
		height: 40px; 
		font-size: 12px; 
		padding-left: 8px;
		border: 1px solid #C4C4C4;
		border-radius: 3px;
	}
	.signUpbtn{
		width: 100%; height: 50px; color: white; background-color: #22AC38; border: 0px; border-radius: 2px;
	}
	#gender{
		width: 415px; 
		height: 40px; 
		font-size: 12px; 
		padding-left:8px; 
		border: 1px solid #C4C4C4;
		border-radius: 3px;
	}
	#month{
		width: 115px; 
		height: 44px; 
		font-size: 12px; 
		padding-left:8px; 
		border: 1px solid #C4C4C4;
		border-radius: 3px;
		margin-right: 31px;
		margin-left: 31px;
	}
	#phone1{
		width: 115px; 
		height: 44px; 
		font-size: 12px; 
		padding-left:8px; 
		border: 1px solid #C4C4C4;
		border-radius: 3px;
	}
</style>
</head>
<body>
<form method="post" action="insertMember.mem">
<div align="center" style="margin-top: 60px;">
		<img src="resources/images/mainLogo.png" style="height: 70px;">
		<br>
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
					<input type="text" placeholder="비밀번호를 입력하세요" class="inputs" name="userPwd"> 
				</td>
			</tr>
			
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 15px;">
					비밀번호 확인
				</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<input type="text" placeholder="비밀번호을 한번더 입력하세요" class="inputs"> 
					<br>
				</td>
			</tr>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 15px;">이름</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<input type="text" placeholder="이름을 입력하세요" class="inputs" name="userName"> 
				</td>
			</tr>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 15px;">
					생년월일
				</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<input id="year" type="text" placeholder="년(4자)" class="inputs2"> 
					<select id="month">
						<option selected disabled hidden>월</option>
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
						<option>06</option>
						<option>07</option>
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
					</select>
					<input type="text" placeholder="일" class="inputs2" id="day"> 
					<br>
				</td>
			</tr>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 15px;">
					성별
				</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<select id="gender">
						<option selected disabled hidden>선택해주세요.</option>
						<option>남</option>
						<option>여</option>
					</select>
					<br>
				</td>
			</tr>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 15px;">
					휴대폰 번호
				</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<select id="phone1">
						<option selected disabled hidden></option>
						<option>010</option>
						<option>011</option>
						<option>017</option>
						<option>019</option>
					</select>
					<input type="text" class="inputs2" style="margin-left: 33px; margin-right: 33px;" id="phone2"> 
					<input type="text" class="inputs2" id="phone3"> 
					<br>
				</td>
			</tr>
			<tr>
				<td style="width:400px; font-size: 12px; font-weight: bold; padding-top: 15px;">주소(동)</td>
			</tr>
			<tr>
				<td style="padding-top: 3px;">
					<input type="text" placeholder="동만 입력하세요 ex) 양재동, 도곡동" class="inputs" name="userAddress"> 
				</td>
			</tr>
			<tr>
				<td style="padding-top: 15px;">
					<button class="signUpbtn">가입하기</button>
				</td>
			</tr>
		</table>
	</div>
	<input type="hidden" name="userBirth" id="birth">
	<input type="hidden" name="userPhone" id="phone">
	<input type="hidden" name="userGender" id="realgender">
	</form>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script>
		
		$(document).on("change", "#year, #day, #month", function(){
			var birth = $("#year").val() + "년 " + $("#month").val() + "월 " + $("#day").val() + "일";
			$("#birth").val(birth);
		})
		
		$(document).on("change", "#phone1, #phone2, #phone3", function(){
			var phone = $("#phone1").val() + "-" + $("#phone2").val() + "-" + $("#phone3").val();
			$("#phone").val(phone);
		})
		
		$(document).on("change", "#gender", function(){
			$("#realgender").val($("#gender").val());
		});
	</script>
</body>
</html>