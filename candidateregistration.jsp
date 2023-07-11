<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Candidate Registration</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1

		response.setHeader("Pragma", "no-cache"); // HTTP 1.0

		response.setHeader("Expires", "0"); // Proxies

		if (session.getAttribute("employeeId") == null) {
			response.sendRedirect("login.jsp");
		}
	%>



	<div align="center">
		<h6>
			<%
				if (null != request.getAttribute("msg")) {
					out.println(request.getAttribute("msg"));
				}
			%>
		</h6>
		<h5><b><a href="loginsuccess.jsp" class="text-primary">HR Dashboard</a></b> ></h5>


			<h3>Candidate Register Form</h3>
			<form action="registercandidate" method="post">
				<table style="width: 30%">
					<tr>
						<td>First Name</td>
						<td><input type="text" name="firstName" required /></td>
					</tr>
					<tr height="10">
						<td></td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td><input type="text" name="lastName" required /></td>
					</tr>
					<tr height="10">
						<td></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><input type="text" name="email" required /></td>
					</tr>
					<tr height="10">
						<td></td>
					</tr>
					<tr>
						<td>HR name</td>
						<td><input type="text" name="hrName" required /></td>
					</tr>
					<tr height="10">
						<td></td>
					</tr>
					<tr>
						<td>Domain</td>
						<td><input type="text" name="domain" required /></td>
					</tr>
					<tr height="10">
						<td></td>
					</tr>
					<tr>
						<td>Date Joined</td>
						<td><input type="date" name="dateJoined" required /></td>
					</tr>
					<tr height="10">
						<td></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><textarea type="textarea" name="address" required /></textarea></td>
					</tr>
					<tr height="10">
						<td></td>
					</tr>
					<tr>
						<td>Contact No</td>
						<td><input type="text" name="contact" required /></td>
					</tr>
					<tr height="10">
						<td></td>
					</tr>
					<tr>
						<td>Aadhar card No</td>
						<td><input type="text" name="adharNo" required /></td>
					</tr>
				</table>
				<br> <input type="submit" value="Submit" /> <input
					type="reset">
			</form>
	</div>

</body>
</html>