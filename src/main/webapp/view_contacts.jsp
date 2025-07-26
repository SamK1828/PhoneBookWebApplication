<%@ page import="java.util.*, phonebook.model.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
</head>
<body>
	<h2 style="text-align: center;">Phonebook - Contact List</h2>

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
        if (contacts != null) {
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
			<td colspan="6">No contacts found.</td>
		</tr>
		<%
        }
    %>
	</table>

</body>
</html>
