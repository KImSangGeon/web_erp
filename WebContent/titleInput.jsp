<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert form</title>
<link rel ="stylesheet" href= "css/insert.css">
</head>
<body>
			<h2>직책 관리 추가 폼</h2>
			<form action="TitleInsertServlet" method = "get">
			<fieldset>
			<label for = "tno">직책번호 : </label>
			<input type="text" name ="tno" id = "tno" autofocus required/><br>
			<label for = "tname" >직책이름 : </label>
			<input type="text" name = "tname" id = tname/><br>
			
			
			<input type = "submit" value = "추가">		
			<a href = "TitleListServlet"><input type = "button" value = "직책목록"></a> 
			</fieldset>
			</form>


</body>
</html>