<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 	${list } --%>

	<h2>부서 목록</h2>
	<table border="1">
		<thead>
			<td>부서번호</td>
			<td>부서명</td>
			<td>위치</td>
		</thead>
		<tbody>
			<c:forEach var="dept" items="${list }">
				<tr>
					<td>${dept.dNo }</td>
					<td><a href="DeptGetServlet?dno=${dept.dNo}">${dept.dName}</a><td>${dept.floor }</td></td>
				</tr>
			</c:forEach>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2"><a href="deptInput.jsp">부서 추가</a></td>
				<td colspan ="1"><a href= "index.jsp">메인</a></td>
			</tr>	
			</tr>
		</tfoot>
	</table>


</body>
</html>