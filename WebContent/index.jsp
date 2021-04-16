
<%@page import="web_erp.ds.jndiDS"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    <c:set var ="con" value = "${jndiDS.getConnection() }"/> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터 베이스 연동 테스트</title>
</head>
<body>
<%-- 	연결 확인	<c:out value="${con }"></c:out> --%>
		<fieldset>
				<legend>ERP</legend>
				<ul>
					<li><a href = "TitleListServlet">직책관리</a></li>
					<li><a href = "DeptListServlet">부서관리</a></li>
					<li><a href = "EmpListServlet">직원관리</a></li>
				</ul>
				
		</fieldset>

</body>
</html>