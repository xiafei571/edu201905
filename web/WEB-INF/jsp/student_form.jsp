<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>学生表单</title>
</head>
<body>
	<div class="container">
		<h2 　id="form_tile">学生管理</h2>
		<!-- TODO form -->
		<form:form method="post" id="student_form" modelAttribute="student"
			action="add">
			<div class="form-group row">
				<label for="student_id" class="col-sm-2 col-form-label">学生ID:</label>
				<div class="col-sm-4">
					<form:input path="sid" type="text" readonly="readonly"
						class="form-control-plaintext" id="student_id" />
				</div>
			</div>
			<div class="form-group row">
				<label for="student_name" class="col-sm-2 col-form-label">名前:</label>
				<div class="col-sm-4">
					<form:input path="sname" type="text" class="form-control"
						id="student_name" />
				</div>
			</div>

			<div class="form-group row">
				<label for="student_sex" class="col-sm-2 col-form-label">性別:</label>
				<div class="col-sm-4">
					<!-- <form:input path="sex" type="text" class="form-control"
						id="student_sex" />-->
					<form:select class="custom-select" id="student_sex" path="sex">
						<option value="0" <c:if test="${student.sex == 0}">selected</c:if>>未知</option>
						<option value="1" <c:if test="${student.sex == 1}">selected</c:if>>男</option>
                        <option value="2" <c:if test="${student.sex == 2}">selected</c:if>>女</option>
					</form:select>
				</div>
			</div>

			<div class="form-group row">
				<label for="student_birth" class="col-sm-2 col-form-label">生日:</label>
				<div class="col-sm-4">
					<form:input path="birth" type="text" class="form-control"
						id="student_birth" placeholder="1900/01/01" />
				</div>
			</div>
			<div class="form-group row">
				<label for="student_loc" class="col-sm-2 col-form-label">籍贯:</label>
				<div class="col-sm-4">
					<form:input path="loc" type="text" class="form-control"
						id="student_loc" />
				</div>
			</div>
			<div class="form-group row">
				<label for="student_ethnic" class="col-sm-2 col-form-label">民族:</label>
				<div class="col-sm-4">
					<form:input path="ethnic" type="text" class="form-control"
						id="student_ethnic" />
				</div>
			</div>

			<button id="student_reset" type="button" class="btn"
				onclick="window.location.href='update'">Reset</button>
			<button id="student_submit" type="submit" class="btn btn-primary">修改</button>
		</form:form>



	</div>
	<script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.bootcss.com/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.bootcss.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/student.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			initForm('${status}');
		}
	</script>
</body>
</html>