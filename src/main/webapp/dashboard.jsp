<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phonebook Dashboard</title>
<style>
body {
	font-family: Arial, sans-serif;
	background: #f4f4f4;
	padding: 40px;
	text-align: center;
}

h1 {
	color: #333;
}

.nav {
	margin-top: 30px;
}

.nav a {
	display: inline-block;
	padding: 12px 20px;
	margin: 10px;
	background-color: #007bff;
	color: white;
	text-decoration: none;
	border-radius: 5px;
}

.nav a:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<h1>📞Phonebook Management System</h1>
	<div class="nav">
		<a href="add_contact.jsp">Add Contact</a> <a href="view_contacts.jsp">View
			Contacts</a>
	</div>
</body>
</html>