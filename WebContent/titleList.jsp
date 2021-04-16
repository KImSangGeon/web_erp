<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>title list</title>
</head>
<body>

		<h2>직책 목록</h2>
		<table border = "1">
			<thead>
					<td>직책번호</td><td>직책명</td>
			</thead>
			<tbody>
			<c:forEach var ="title" items = "${list }">
					<tr>
							<td>${title.no }</td>
							<td><a href ="TitleGetServlet?tno=${title.no}">${title.name}</a></td>
					</tr>					
			</c:forEach>				
			</tbody>
			<tfoot>
					<tr>
					<td colspan ="1"><a href= "titleInput.jsp">직책 추가</a></td>
					<td colspan ="1"><a href= "index.jsp">메인</a></td>
					</tr>	
			</tfoot>		
		</table>
	
</body>
</html>