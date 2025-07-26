<%@ page import="phonebook.model.Contact"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Contact</title>
    <link href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=IBM+Plex+Mono&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            background: linear-gradient(145deg, #0f0c29, #302b63, #24243e);
            font-family: 'IBM Plex Mono', monospace;
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .edit-container {
            background: rgba(255, 255, 255, 0.06);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 30px 40px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.37);
            width: 420px;
            border: 1px solid rgba(255, 255, 255, 0.18);
            position: relative;
            overflow: hidden;
        }

        .edit-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 40px;
            width: 2px;
            height: 100%;
            background: #ff6ec4;
        }

        h2 {
            text-align: center;
            margin-bottom: 25px;
            font-family: 'Indie Flower', cursive;
            font-size: 30px;
            color: #ffeaa7;
        }

        input, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ff9ff3;
            border-radius: 10px;
            background: transparent;
            color: #fff;
            font-size: 16px;
            outline: none;
            margin-bottom: 20px;
        }

        input:focus, textarea:focus {
            border-color: #74b9ff;
            box-shadow: 0 0 10px #74b9ff;
        }

        button {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 12px;
            background: linear-gradient(to right, #ff6ec4, #7873f5);
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s ease;
        }

        button:hover {
            box-shadow: 0 0 10px #ff6ec4, 0 0 20px #7873f5;
        }

        .error-msg {
            font-family: 'IBM Plex Mono', monospace;
            color: #ff7675;
            font-size: 22px;
            text-align: center;
        }
    </style>
</head>
<body>

<%
    Contact contact = (Contact) request.getAttribute("contact");
    if (contact != null) {
%>

<div class="edit-container">
    <h2>Edit Contact</h2>
    <form action="updateContact" method="post">
        <input type="hidden" name="id" value="<%= contact.getId() %>" />
        <input type="text" name="name" value="<%= contact.getName() %>" placeholder="Full Name" required />
        <input type="text" name="phone" value="<%= contact.getPhone() %>" placeholder="Phone Number" required />
        <input type="email" name="email" value="<%= contact.getEmail() %>" placeholder="Email Address" required />
        <textarea name="address" rows="4" placeholder="Address"><%= contact.getAddress() %></textarea>
        <button type="submit">Update Contact</button>
    </form>
</div>

<% } else { %>

<div class="error-msg">⚠ Contact not found!</div>

<% } %>

</body>
</html>