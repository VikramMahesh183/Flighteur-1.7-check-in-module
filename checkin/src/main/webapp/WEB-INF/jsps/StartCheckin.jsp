<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Start Checkin</title>
</head>
<body>
	<h2>Start Checkin</h2>
	<form action="proceedCheckIn" method="post">
		<table>
			<tr>
				<td>Enter your Reservation ID:</td>
				<td><input type="text" name="id" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Start" /></td>
			</tr>
		</table>
	</form>
</body>
</html>