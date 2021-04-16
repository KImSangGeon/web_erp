<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>Update form</title>
</head>
<body>
		<h3>업데이트 폼</h3>
		
			<form action="TitleUpdateServlet" method = "get">
			<fieldset>
			<label for = "tno">직책번호 : </label>
			<input type="text" name ="tno" id = "tno"  value ="${param.tno }" autofocus required/><br>
			<label for = "tname" >직책이름 : </label>
			<input type="text" name = "tname" id = "tname" value ="${param.tname }"/><br>
			
			
			<input type = "submit" value = "수정">		
			<a href = "TitleListServlet"><input type = "button" value = "직책목록"></a> 
			</fieldset>
			</form>
		
</body>
</html>