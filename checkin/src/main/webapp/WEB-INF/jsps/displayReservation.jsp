<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reservation Details</title>
</head>
<body>
	<h2>Passenger Details</h2>
	<table>
		<tr>
			<td>Name:</td>
			<td>${reservation.getPassenger().firstName}</td>
		</tr>
		<tr>
			<td>Email:</td>
			<td>${reservation.getPassenger().email}</td>
		</tr>
		<tr>
			<td>Phone:</td>
			<td>${reservation.getPassenger().phone}</td>
		</tr>
	</table>

	<h2>Flight Details</h2>
	<table>
		<tr>
			<td>Flight Number:</td>
			<td>${reservation.getFlight().flightNumber}</td>
		</tr>
		<tr>
			<td>Operating Airlines:</td>
			<td>${reservation.getFlight().operatingAirlines}</td>
		</tr>
		<tr>
			<td>Departure City:</td>
			<td>${reservation.getFlight().departureCity}</td>
		</tr>
		<tr>
			<td>Arrival City:</td>
			<td>${reservation.getFlight().arrivalCity}</td>
		</tr>
		<tr>
			<td>Date of Departure:</td>
			<td>${reservation.getFlight().dateOfDeparture}</td>
		</tr>
		<tr>
			<td>Estimated Departure Time:</td>
			<td>${reservation.getFlight().estimatedDepartureTime}</td>
		</tr>
	</table>
	<h2>Update No.of Bags and Status</h2>
	<form action="proceedToCheckIn" method="post">
		<table>
			<tr>
				<td>Reservation Id:</td>
				<td><input type="text" name="id" value="${reservation.id}" readonly/></td>
			</tr>
			<tr>
				<td>Number of Bags:</td>
				<td><input type="number" name="numberOfBags" /></td>
			</tr>
			<tr>
				<td>Checked In Status:</td>
				<td><input type="radio" name="checkedIn" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Confirm" /></td>
			</tr>
		</table>
	</form>
</body>
</html>