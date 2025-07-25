<%@ page import="java.util.*, phonebook.model.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>View Contacts</title>
<style>
body {
	font-family: Arial, sans-serif;
	padding: 40px;
	background-color: #f1f1f1;
}

table {
	width: 90%;
	margin: auto;
	border-collapse: collapse;
	background-color: white;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

th, td {
	padding: 12px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #007bff;
	color: white;
}

a {
	padding: 6px 12px;
	text-decoration: none;
	color: white;
	border-radius: 4px;
}

.edit {
	background-color: orange;
}

.delete {
	background-color: red;
}

h2 {
	text-align: center;
	color: #333;
}
</style>
</head>
<body>
	<h2>📋 All Contacts</h2>

	<table>
		<thead>
			<tr>
				<th>#</th>
				<th>Name</th>
				<th>Phone</th>
				<th>Email</th>
				<th>Address</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<Contact> contacts = (List<Contact>) request.getAttribute("contactList");

			if (contacts != null && !contacts.isEmpty()) {
				int i = 1;
				for (Contact c : contacts) {
			%>
			<tr>
				<td><%=i++%></td>
				<td><%=c.getName()%></td>
				<td><%=c.getPhone()%></td>
				<td><%=c.getEmail()%></td>
				<td><%=c.getAddress()%></td>
				<td><a href="edit_contact.jsp?id=<%=c.getId()%>" class="edit">Edit</a>
					<a href="ContactController?action=delete&id=<%=c.getId()%>"
					class="delete">Delete</a></td>
			</tr>
			<%
			}
			} else {
			%>
			<tr>
				<td colspan="6" style="text-align: center;">No contacts found.</td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>
