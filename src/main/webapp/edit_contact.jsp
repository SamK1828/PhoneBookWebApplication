<%@ page import="phonebook.model.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Edit Contact</title>
<style>
form {
	width: 400px;
	margin: 40px auto;
	background: #f4f4f4;
	padding: 20px;
	border-radius: 8px;
}

h2 {
	text-align: center;
}

input, textarea {
	width: 100%;
	padding: 10px;
	margin-top: 10px;
}

button {
	margin-top: 15px;
	padding: 10px;
	width: 100%;
	background: #28a745;
	color: white;
	border: none;
	border-radius: 5px;
}
</style>
</head>
<body>

	<%
    Contact contact = (Contact) request.getAttribute("contact");
    if (contact != null) {
%>

	<form action="updateContact" method="post">
		<h2>Edit Contact</h2>
		<input type="hidden" name="id" value="<%= contact.getId() %>" /> <input
			type="text" name="name" value="<%= contact.getName() %>"
			placeholder="Full Name" required /> <input type="text" name="phone"
			value="<%= contact.getPhone() %>" placeholder="Phone Number" required />
		<input type="email" name="email" value="<%= contact.getEmail() %>"
			placeholder="Email Address" required />
		<textarea name="address" rows="4" placeholder="Address"><%= contact.getAddress() %></textarea>
		<button type="submit">Update Contact</button>
	</form>

	<% } else { %>
	<h2 style="text-align: center; color: red;">Contact not found!</h2>
	<% } %>

</body>
</html>
