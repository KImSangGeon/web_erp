<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>update form</title>
</head>
<body>
			<h3>업데이트 폼</h3>
		
			<form action="DeptUpdateServlet" method = "get">
			<fieldset>
			<label for = "dno">부서번호 : </label>
			<input type="text" name ="dno" id = "dno" value = "${param.dno }" autofocus required/><br>
			<label for = "dname" >부서이름 : </label>
			<input type="text" name = "dname" id = "dname" value = "${param.dname }"/><br>
			<label for = "floor" >위치 : </label>
			<input type="text" name = "floor" id = "floor" value = "${param.floor }"/><br>
			
			<input type = "submit" value = "수정">		
			 <a href = "DeptListServlet"><input type = "button" value = "부서목록"></a> 
			</fieldset>
			</form>

</body>
</html>