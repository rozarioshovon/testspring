<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>create a notice</title>

<link
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />
</head>
<body>

	<div class="col-md-6 col-md-offset-3">
		<sf:form method="post" class="form-horizontal"
			action="${pageContext.request.contextPath}/docreate"
			commandName="notice">
			<fieldset>

				<!-- Form Name -->
				<legend>Create Notice</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="name">Name</label>
					<div class="col-md-6">
						<sf:input id="name" path="name" name="name" type="text"
							placeholder="enter name" class="form-control input-md" />
						<sf:errors path="name" cssClass="alert-danger"></sf:errors>
					</div>
				</div>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="email">Email</label>
					<div class="col-md-6">
						<sf:input id="email" path="email" name="email" type="text"
							placeholder="enter valid email" class="form-control input-md" />
						<sf:errors path="email" cssClass="alert-danger"></sf:errors>
					</div>
				</div>

				<!-- Textarea -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="text">Notice</label>
					<div class="col-md-4">
						<sf:textarea class="form-control" path="text" id="text"
							name="text"></sf:textarea>
						<sf:errors path="text" cssClass="alert-danger"></sf:errors>
					</div>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-primary">Create
							Notice</button>
					</div>
				</div>

			</fieldset>
		</sf:form>
	</div>
</body>
</html>