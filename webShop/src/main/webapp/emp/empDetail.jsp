<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSP의 주석은 이 방식!
${}: getAttribute()
${emp}, 원래 방식: <%=request.getAttribute("emp")%> (객체)
${emp.employee_id}, 원래 방식: <%=request.getAttribute("emp").getEmployee_id()%> (객체의 값, VO의 변수와 동일하게 .변수 적어주면 됨!)
-> 알아서 getAttribute() 함수가 실행되는 것~
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 상세 정보</title>
<%@ include file="../common/commonfiles.jsp" %>
<style>
#container {
	margin: 10px auto;
	width: 50%;
}
table {
	margin: 0 auto;
}
h1 {
	text-align: center;
}
input[name='email'],input[name='department_id'],input[name='job_id'],input[name='salary'],input[name='manager_id'],input[name='hire_date'] {
	background-color: pink;	
}
</style>
</head>
<body>
	<div id="container">
		<%@ include file="../common/header.jsp" %>
		<h1>직원 상세 정보</h1>
		<hr>
		<form action="<%=request.getContextPath() %>/emp/empdetail.do" class="mb-3" method="post"> 
			<table>
				<tr class="form-floating">
					<td><label for="employee_id">직원번호</label></td>
					<td>
						<span>${emp.employee_id}</span>
						<input id="employee_id" type="hidden" name="employee_id" value="${emp.employee_id}">
					</td>
				</tr>
				<tr>
					<td>firstName</td>
					<td><input type="text" name="first_name" maxlength="20" value="${emp.first_name}"></td>
				</tr>
				<tr>
					<td>LastName</td>
					<td><input type="text" name="last_name" required="required" value="${emp.last_name}"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" required="required" value="${emp.email}"></td>
				</tr>
				<tr>
					<td>phone</td>
					<td><input type="tel" name="phone_number"
						value="010-7896-8963" pattern="010-[0-9]{4}-[0-9]{4}" value="${emp.phone_number}"></td>
				</tr>
				<tr>
					<td>salary</td>
					<td><input type="number" name="salary" value="${emp.salary}"></td>
				</tr>
				<tr>
					<td>부서</td>
					<td>
						<select name="department_id">
						<c:forEach items="${deptList}" var="dept">
							<option value="${dept.department_id}" ${emp.department_id == dept.department_id ? "selected" : ""}>${dept.department_name}</option>
						</c:forEach>
					</select>
					</td>
				</tr>
				<tr>
					<td>매니저</td>
					<td>
						<select name="manager_id">
						<c:forEach items="${managerList}" var="manager">
							<option value="${manager.employee_id}" ${emp.manager_id == manager.employee_id ? "selected" : ""}>${manager.first_name} ${manager.last_name }</option>
						</c:forEach>
					</select>
					</td>
				</tr>
				<tr>
					<td>커미션</td>
					<td><input type="text" name="commission_pct" value="${emp.commission_pct}"></td>
				</tr>
				<tr>
					<td>입사일</td>
					<td><input type="date" name="hire_date" value="${emp.hire_date}" required></td>
				</tr>
				<tr>
					<td>직급</td>
					<td>
						<select name="job_id">
							<c:forEach items="${jobList}" var="job">
								<option value="${job.job_id}" ${emp.job_id == job.job_id ? "selected" : ""}>${job.job_title}</option>
							</c:forEach>
						</select>
					</td>
				</tr>
				<tr style="text-align: center;">
					<td colspan="2"><input type="submit" value="정보 수정"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>