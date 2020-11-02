<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/chat.css">
<meta charset="UTF-8">
<title>채팅</title>
</head>
<body>
 <script src="http://localhost:82/socket.io/socket.io.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.js"></script>
        <script>
            $(document).ready(function(){
                var socket = io("http://localhost:82");
            });
        </script>
	<div class="chat-list-area">
		<div class="title-area"></div>
		<div class="chat-title-area">채팅</div>
		<div class="list-area"></div>
	</div>
	<div class="chat-cont-area">
		<div class="sender-title"><img src="${pageContext.request.contextPath}/resources/img/yoon.png" width="50px" height="50px">kingkingda</div>
		<div class="item-area"><img src=""></div>
		<div class="chat-area"></div>
		<div class="chat-input-area"><input type="text"></div>
	</div>
	<div class="chat-sender-area">
		<div class="pro-area"><img src=""></div>
	</div>
</body>
</html>