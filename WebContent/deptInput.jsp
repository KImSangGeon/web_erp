<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>insert form</title>
</head>
<body>
		<h2>부서 관리 추가 폼</h2>
			<form action="DeptInsertServlet" method = "get">
			<fieldset>
			<label for = "dno">부서번호 : </label>
			<input type="text" name ="dno" id = "dno" autofocus required/><br>
			<label for = "dname" >부서이름 : </label>
			<input type="text" name = "dname" id = dname/><br>
			<label for = "floor" >위치 : </label>
			<input type="text" name = "floor" id = floor/><br>
			
			<input type = "submit" value = "추가">		
			 <a href = "DeptListServlet"><input type = "button" value = "부서목록"></a> 
			</fieldset>
			</form>

</body>
</html>