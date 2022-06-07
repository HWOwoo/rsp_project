<%@ page import="java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>가위바위보 결과!</title>
<link rel="stylesheet" href="css/Main_RSP_css.css">

<style>
		#wrap { 		
		background-image: url(img/background_result.png);
		}
</style>
</head>
<body>
<div id="wrap">

	<div id="content">
	<%
		Random random = new Random();
	
		String rsp = request.getParameter("rsp");
		int com = random.nextInt(3) + 1;
		
		
		int cnt_win = 0;
		int cnt_lose = 0;
		
		int re = 0;

	%>

<div id="res">
		<p> 결과</p>
	<%
		switch(com) {
		case 1 : // 가위
			if(rsp.equals("S")) {
				out.println("<h1>비겼습니다.</h1>");
			} else if(rsp.equals("R")) {
				out.println("<h1>승리했습니다.</h1>");
				cnt_win++;
			} else if(rsp.equals("P")) {
				out.println("<h1>패배했습니다.</h1>");
				cnt_lose++;
			}
		
			break;
			
		case 2 : // 바위
			if(rsp.equals("S")) {
				out.println("<h1>패배했습니다.</h1>");
				cnt_win++;
			} else if(rsp.equals("R")) {
				out.println("<h1>비겼습니다.</h1>");
			} else if(rsp.equals("P")) {
				out.println("<h1>승리했습니다.</h1>");
				cnt_win++;
			}
		
			break;
			
		case 3 : // 보
			if(rsp.equals("S")) {
				out.println("<h1>승리했습니다.</h1>");
				cnt_win++;
			} else if(rsp.equals("R")) {
				out.println("<h1>패배했습니다.</h1>");
				cnt_win++;
			} else if(rsp.equals("P")) {
				out.println("<h1>비겼습니다.</h1>");
			}
		
			break;
			
		}
	%>
</div>
	
<div id="content_result">
	<h1 id="result_text"> 상대방이 낸 것 </h1>
	<%

		if(com == 1) {
	%>
			<img src=img/SS.png width="200" height="200"/>
	<%
		} else if(com == 2) {
	%>
			<img src=img/RR.png width="200" height="200"/>
	<%
		} else if(com == 3) {
	%>
			<img src=img/PP.png width="200" height="200"/>	
	<%
		}
	%>
</div>


	

<div id="result">
	<form method="post" action="Main.jsp"><h1><a href="Main.jsp" >다시하기</a></h1></form>
</div>
	
</div>	
</div>
</body>
</html>