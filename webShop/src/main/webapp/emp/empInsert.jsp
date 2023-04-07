<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 정보 등록</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<div>
		<h1>직원정보 입력</h1>
		<form action="<%=request.getContextPath() %>/emp/empinsert.do" class="mb-3" method="post"> 
		<!-- 
		직원등록 페이지로 이동하는 데 이미 get 방식을 사용함 (index.jsp)
		따라서 하는 역할이 다르기 때문에 방법을 다르게 servlet에게 가는 방법은 post로 변경! 
		-->
			<table>
				<tr class="form-floating">
					<td><label for="employee_id">직원번호</label></td>
					<td><input id="employee_id" type="number" name="employee_id" placeholder="직원 번호는 시퀀스가 알아서~" value="999" readonly></td>
				</tr>
				<tr>
					<td>firstName</td>
					<td><input type="text" name="first_name" maxlength="20"></td>
				</tr>
				<tr>
					<td>LastName</td>
					<td><input type="text" name="last_name" required="required"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type="email" name="email" required="required"></td>
				</tr>
				<tr>
					<td>phone</td>
					<td><input type="tel" name="phone_number"
						value="010-7896-8963" pattern="010-[0-9]{4}-[0-9]{4}"></td>
				</tr>
				<tr>
					<td>salary</td>
					<td><input type="number" name="salary"></td>
				</tr>
				<tr>
					<td>부서</td>
					<td><input type="number" name="department_id" value="60"></td>
				</tr>
				<tr>
					<td>메니져</td>
					<td><input type="number" name="manager_id" value="100"></td>
				</tr>
				<tr>
					<td>커미션</td>
					<td><input type="text" name="commission_pct" value="0.2"></td>
				</tr>
				<tr>
					<td>입사일</td>
					<td><input type="date" name="hire_date" value="2021-01-10"
						required="required"></td>
				</tr>
				<tr>
					<td>직급</td>
					<td><input type="text" name="job_id" required="required"
						value="IT_PROG"></td>
				</tr>
				<tr style="text-align: center;">
					<td colspan="2"><input type="submit" value="직원등록"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>