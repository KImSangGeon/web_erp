<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>update form</title>
</head>
<body>
		<h2>직원 관리 수정 폼</h2>
			<form action="EmpUpdateServlet" method = "get">
			<fieldset>
			<label for = "eno">직원번호 : </label>
			<input type="text" name ="eno" id = "eno" value = "${param.eno }"autofocus required/><br>
			<label for = "ename" >직원이름 : </label>
			<input type="text" name = "ename" id = ename value = "${param.ename }"/><br>
			
			<label for = "title" >직책 : </label>    <!--박스  -->		
			<select id = "title" name = "title"  >
			<c:set var = "title" value = "사장, 부장, 차장, 과장, 대리, 사원, 인턴"/>			
			<c:forTokens var = "titletoken" items="${title }" delims=",">
			<option value = "1" >${titletoken}</option><br>
				</c:forTokens>
			</select><br>
		
			
			<label for = "manager" >직속상사 : </label>
			<input type="text" name = "manager" id = "manager" value = "${param.manager }"/><br>
			
			<label for = "salary" >급여 : </label>  <!-- 스핀 -->
			<input type="text" name = "salary" id = "salary" value ="${param.salary }"/><br>
			
			<label for = "dept" >부서 : </label>
			<input type="text" name = "dept" id = "dept" value="${param.dept }"/><br>
			
			<input type = "submit" value = "수정">		
		    <a href = "EmpListServlet"><input type = "button" value = "직원목록"></a> 
			</fieldset>
			</form>
	
</body>
</html>