<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Login</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<jsp:include page="bootstrap/bootstrap.jsp"></jsp:include>
<jsp:include page="bootstrap/header.jsp"></jsp:include>
<body>
	<nav class="navbar navbar-expand-md bg-info navbar-dark">
		<button class=" bg-dark text-success">
			<a href="index.jsp">HOME</a>
		</button>
	</nav>

	<div class="container">
		<div align="center">

			<div class="card3">

				<div class="header">
					<h3 style="color: purple">
						<b>Employee Login</b>
					</h3>
					<h6 style="color: red">
						<%
						if (null != request.getAttribute("msg")) {
							out.println(request.getAttribute("msg"));
						}
						%>
					</h6>

					<form action="<%=request.getContextPath()%>/emp_login"
						method="post">
						<div class="text">
							<table align="center">


								<tr>
									<td><span class="input-group-text"> <i
											class="fa fa-id-card-o"></i></span> <input name="username"
										class="from-control" placeholder="Employee Id" type="text"
										required></td>
								</tr>

								<tr>
									<td><span class="input-group-text"> <i
											class="fa fa-key"></i></span> <input name="password"
										class="from-control" placeholder="Password" type="password"
										required></td>
								</tr>
								<tr>
									<td><input type="submit" class="submit-button "
										value="Submit"></td>
								</tr>
								<tr>
									<td><a href="registration.jsp"><h4>Register Here</h4></a></td>
								</tr>
							</table>

						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
