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
 <script src="http://172.30.1.40:82/socket.io/socket.io.js"></script>
        <script src="https://code.jquery.com/jquery-1.11.1.js"></script>
        <!-- <script>
            $(document).ready(function(){
                var socket = io("http://localhost:82");
            });
        </script> -->
	<div class="chat-list-area">
		<div class="title-area"></div>
		<div class="chat-title-area">채팅</div>
		<div class="list-area"></div>
	</div>
	<div class="chat-cont-area">
		<div class="sender-title"><img src="${pageContext.request.contextPath}/resources/images/dayoon.png" width="50px" height="50px">kingkingda</div>
		<div class="item-area"><img src=""></div>
		<div class="chat-area" id="chat_box"></div>
		<div class="chat-input-area"><img src="${pageContext.request.contextPath}/resources/images/heejin.png" width="50px" height="50px"><input type="text" size="110" id="msg">
			 <button id="msg_process">전송</button>
		</div>
	</div>
	<div class="chat-sender-area">
		<div class="pro-area"><img src="${pageContext.request.contextPath}/resources/images/heejin.png" width="100px" height="100px"></div>
	</div>
</body>
<script>
            $(document).ready(function(){
                var socket = io('http://172.30.1.40:82');
                
                //msg에서 키를 누를떄
                $("#msg").keydown(function(key){
                    //해당하는 키가 엔터키(13) 일떄
                    if(key.keyCode == 13){
                        //msg_process를 클릭해준다.
                        msg_process.click();
                    }
                });
                
                //msg_process를 클릭할 때
                $("#msg_process").click(function(){
                    //소켓에 send_msg라는 이벤트로 input에 #msg의 벨류를 담고 보내준다.
                     socket.emit("send_msg", $("#msg").val());
                    //#msg에 벨류값을 비워준다.
                    $("#msg").val("");
                });
                
                socket.on('send_msg', function(msg) {
                    //div 태그를 만들어 텍스트를 msg로 지정을 한뒤 #chat_box에 추가를 시켜준다.
                    $('<div class="chat-box"></div>').text(msg).appendTo("#chat_box");
                });
            });
            
           
        </script>
</html>