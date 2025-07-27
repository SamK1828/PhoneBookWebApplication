<%@ page import="java.util.*, phonebook.model.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>All Contacts</title>
<style>
table {
	border-collapse: collapse;
	width: 80%;
	margin: 20px auto;
}

th, td {
	padding: 12px;
	border: 1px solid #ddd;
	text-align: center;
}

th {
	background-color: #4CAF50;
	color: white;
}

a {
	text-decoration: none;
	color: blue;
}
</style>
<meta charset="UTF-8">
<title>All Contacts</title>
<link
	href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=IBM+Plex+Mono&display=swap"
	rel="stylesheet">
<style>
body {
	margin: 0;
	padding: 0;
	background: linear-gradient(145deg, #0f0c29, #302b63, #24243e);
	font-family: 'IBM Plex Mono', monospace;
	color: #fff;
	min-height: 100vh;
}

h2 {
	text-align: center;
	font-family: 'Indie Flower', cursive;
	font-size: 36px;
	color: #ffeaa7;
	margin: 30px 0 10px;
}

table {
	border-collapse: collapse;
	width: 90%;
	margin: 30px auto;
	background: rgba(255, 255, 255, 0.06);
	backdrop-filter: blur(6px);
	box-shadow: 0 8px 32px rgba(0, 0, 0, 0.37);
	border-radius: 12px;
	overflow: hidden;
}

th, td {
	padding: 14px;
	border: 1px solid rgba(255, 255, 255, 0.2);
	text-align: center;
	color: #fff;
}

th {
	background: linear-gradient(to right, #ff6ec4, #7873f5);
	color: #fff;
	font-weight: bold;
}

td {
	background-color: rgba(255, 255, 255, 0.04);
}

a {
	text-decoration: none;
	color: #74b9ff;
	font-weight: bold;
	transition: 0.3s ease;
}

a:hover {
	color: #ff6ec4;
	text-shadow: 0 0 5px #ff6ec4;
}

.no-data {
	text-align: center;
	color: #ff7675;
	font-size: 20px;
	padding: 20px;
}
</style>
</head>
<body>
	<h2>📋 Phonebook - Contact List</h2>

	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Address</th>
			<th>Actions</th>
		</tr>

		<%
        List<Contact> contacts = (List<Contact>) request.getAttribute("contacts");
        if (contacts != null && !contacts.isEmpty()) {
            for (Contact c : contacts) {
    %>
		<tr>
			<td><%= c.getId() %></td>
			<td><%= c.getName() %></td>
			<td><%= c.getPhone() %></td>
			<td><%= c.getEmail() %></td>
			<td><%= c.getAddress() %></td>
			<td><a href="editContact?id=<%= c.getId() %>">Edit</a> | <a
				href="deleteContact?id=<%= c.getId() %>"
				onclick="return confirm('Are you sure to delete?')">Delete</a></td>
		</tr>
		<%
            }
        } else {
    %>


		<tr>
			<td colspan="6" class="no-data">No contacts found.</td>
		</tr>
		<%
        }
    %>
	</table>

</body>
</html>