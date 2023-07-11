<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="ISO-8859-1">
<title>Employee Tracking Management System</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-info navbar-dark">
		<button class=" bg-dark text-success">
			<a href="index.jsp">HOME</a>
		</button>
	</nav>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div
				class="col-md-6 col-md-offset-3 container justify-content-center card">
				<div align="center">
					<h6>
						<%
						if (null != request.getAttribute("msg")) {
							out.println(request.getAttribute("msg"));
						}
						%>
					</h6>

					<h3><b class="text-info">HR Registration Form</b></h3>
				</div>
				<div class="card-body">
					<form action="register" method="post">
						<table style="width: 10%">
							<tr class="form-group">
								<label class="text-success control-label">Full Name</label>
								<input type="text" name="fullName" class="form-control" required
									autofocus="autofocus" />
							</tr>
							<tr height="10">
								<td></td>
							</tr>
							<tr class="form-group">
								<label class="text-success control-label">Designation</label>
								<input type="text" name="designation" class="form-control"
									required autofocus="autofocus" />
							</tr>
							<tr height="10">
								<td></td>
							</tr>
							<tr class="form-group">
								<label class="text-success control-label">Email</label>
								<input type="text" name="email" class="form-control" required
									autofocus="autofocus" />
							</tr>
							<tr height="10">
								<td></td>
							</tr>
							<tr class="form-group">
								<label class="text-success control-label">Contact No</label>

								<input type="text" name="contact" class="form-control" required
									autofocus="autofocus" />
							</tr>
							<tr height="10">
								<td></td>
							</tr>
							<tr class="form-group">
								<label class="text-success control-label">Location</label>
								<input type="text" name="location" class="form-control" required
									autofocus="autofocus" />
							</tr>
							<tr height="10">
								<td></td>
							</tr>
							<tr class="form-group">
								<label class="text-success control-label">Employee Id</label>
								<input type="text" name="employeeId" class="form-control"
									required autofocus="autofocus" />
							</tr>
							<tr height="10">
								<td></td>
							</tr>
							<tr class="form-group">
								<label class="text-success control-label">Password</label>
								<input type="password" name="password" class="form-control"
									required autofocus="autofocus" />
							</tr>
							<tr height="10">
								<td></td>
							</tr>
						</table>
						<label class="text-success control-label"><input
							type="submit" value="Submit" /> <input type="reset"></label>
					</form>

				</div>
			</div>
		</div>
	</div>
</body>
</html>
<jsp:include page="bootstrap/footer.jsp"></jsp:include>