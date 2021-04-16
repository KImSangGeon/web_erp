<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>employee list</title>
</head>
<body>
<%-- ${list } --%>
		<h2>직원 목록</h2>
		<table border = "1">
			<thead>
					<td>직원번호</td>
					<td>직책이름</td>
					<td>직책</td>
					<td>직속상사</td>
					<td>급여</td>
					<td>부서</td>
			</thead>
			<tbody>
			<c:forEach var ="emp" items = "${list }">
					<tr>
							<td>${emp.eNo }</td>
							<td><a href ="EmpGetServlet?eno=${emp.eNo}">${emp.eName}</a></td>
							<td>${emp.TitleList()}</td>
							<td>${emp.ManagerList()}</td>
							<td>${emp.salary }</td>
							<td>${emp.DeptList()}</td>
					</tr>					
			</c:forEach>				
			</tbody>
			<tfoot>
					<tr>
					<td colspan ="5"><a href= "empInput.jsp">직원 추가</a></td>
					<td colspan ="1"><a href= "index.jsp">메인</a></td>
					</tr>		
			</tfoot>		
		</table>


</body>
</html>