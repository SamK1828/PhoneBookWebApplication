<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="phonebook.model.Contact" %>
<%
    Contact contact = (Contact) request.getAttribute("contact");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Contact</title>
    <style>
        body {
            font-family: Arial;
            background: #f0f0f0;
        }
        .form-container {
            background: white;
            padding: 20px;
            margin: 80px auto;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px gray;
        }
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            width: 100%;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Edit Contact</h2>
        <form action="updateContact" method="post">
            <input type="hidden" name="id" value="<%= contact.getId() %>"/>

            <label>Name:</label>
            <input type="text" name="name" value="<%= contact.getName() %>" required />

            <label>Phone:</label>
            <input type="text" name="phone" value="<%= contact.getPhone() %>" required />

            <label>Email:</label>
            <input type="email" name="email" value="<%= contact.getEmail() %>" required />

            <label>Address:</label>
            <input type="text" name="address" value="<%= contact.getAddress() %>" required />

            <input type="submit" value="Update Contact" />
        </form>
    </div>
</body>
</html>
