<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info form</title>
</head>
<body>
		<fieldset>
			<h2>부서관리</h2>
			<label for = "dno">부서번호 : </label>
			<input type="text" name ="dno" id = "dno" value ="${dept.dNo }" autofocus required/><br>
			
			<a href = "DeptDelServlet?dno=${dept.dNo }">삭제</a>
			<a href = "DeptUpdate.jsp?dno=${dept.dNo }&dname=${dept.dName}&floor=${dept.floor}">수정</a>
						
			</fieldset>
	</body>
</html>