<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login Page</title>

<link
	href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css" />

</head>
<body onload='document.f.username.focus();'>
	<div class="col-md-6 col-md-offset-3">
		<form class="form-horizontal"
			action="${pageContext.request.contextPath}/login" method="post">

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<!--Need to Search reason behind this tag -->

			<fieldset>

				<!-- Form Name -->
				<legend>Login</legend>

				<!-- Text input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="username">Username</label>
					<div class="col-md-6">
						<input id="username" name="username" type="text" placeholder=""
							class="form-control input-md">
						<!-- <input id="j_username" name="j_username"
							placeholder="Enter username" class="input-xlarge" required=""
							type="text">
 -->
					</div>
				</div>

				<!-- Password input-->
				<div class="form-group">
					<label class="col-md-4 control-label" for="password">Password</label>
					<div class="col-md-6">
						<input id="password" name="password" type="password"
							placeholder="" class="form-control input-md">
						<!-- <input id="j_password" name="j_password"
							placeholder="Enter password" class="input-xlarge" type="password"> -->

					</div>
				</div>

				<div class="alert-danger">
					<c:if test="${param.error != null }">
						Incorrect Username or Password ${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message} 
					</c:if>
				</div>

				<!-- Button -->
				<div class="form-group">
					<label class="col-md-4 control-label" for="submit"></label>
					<div class="col-md-4">
						<button id="submit" name="submit" class="btn btn-primary">login</button>
					</div>
				</div>

			</fieldset>
		</form>

	</div>
</body>
</html>
