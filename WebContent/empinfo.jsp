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
			<h2>직원관리</h2>
			<label for = "eno">직원번호 : </label>
			<input type="text" name ="eno" id = "eno" value ="${emp.eNo }" autofocus required/><br>
			
			<a href = "EmpDelServlet?eno=${emp.eNo }">삭제</a>
			<a href = "empUpdate.jsp?eno=${emp.eNo }
			&ename=${emp.eName}
			&title=${emp.title.no}
			&manager=${emp.manager.eNo}
			&salary=${emp.salary}
			&dept=${emp.dept.dNo}">수정</a>
						
			</fieldset>
</body>
</html>