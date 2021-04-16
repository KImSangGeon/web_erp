<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>info form</title>
</head>
<body>
<%--찍어보기 ${title} --%>
			<fieldset>
			<h2>직책관리</h2>
			<label for = "tno">직책번호 : </label>
			<input type="text" name ="tno" id = "tno" value ="${title.no }" autofocus required/><br>
			
			<a href = "TitleDelServlet?tno=${title.no }">삭제</a>
			<a href = "titleUpdate.jsp?tno=${title.no }&tname=${title.name}">수정</a>
						
			</fieldset>

</body>
</html>