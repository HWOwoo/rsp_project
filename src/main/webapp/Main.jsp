<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="css/Main_css.css">
<title>가위바위보 게임!</title>
<style>
		#wrap {
		background-image: url(img/background_result.png);
		}
	
</style>
</head>
<body>
<div id="wrap">
	<script>
		function NoMultiChk(chk){

  		var obj = document.getElementsByName("rsp");
		for(var i=0; i<obj.length; i++){
			if(obj[i] != chk){
			obj[i].checked = false;
			}
		}
		}

	</script>

	<div id="content">
	<div id="banner"> 
	<h2> 가위바위보 게임 </h2>
	</div>
	
	<form method="post" action="Main_RSP.jsp">
	
	<div id="content_img">
	<img src="img/SS.png" width="200" height="200"/>
	<img src="img/RR.png" width="200" height="200"/>
	<img src="img/PP.png" width="200" height="200"/>
	</div>
	<br>

	
	<div id="checkrsp">
		<input name="rsp" type="checkbox" value="S" onclick="NoMultiChk(this)"/>가위
		<input name="rsp" type="checkbox" value="R" onclick="NoMultiChk(this)"/>바위
		<input name="rsp" type="checkbox" value="P" onclick="NoMultiChk(this)"/>보
	</div>

	<br>
	<div id="sub"> <input type="submit" value="제출" style="width: 100px;" height="100px;"></div>
	</form>
</div>
</div>
</body>
</html>