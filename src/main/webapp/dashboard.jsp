<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Phonebook Dashboard</title>
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Indie+Flower&family=IBM+Plex+Mono&display=swap" rel="stylesheet">
<style>
    body {
        font-family: 'IBM Plex Mono', monospace;
        margin: 0;
        padding: 0;
        background: linear-gradient(145deg, #0f0c29, #302b63, #24243e);
        color: #fff;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    h1 {
        font-family: 'Indie Flower', cursive;
        color: #ffeaa7;
        font-size: 40px;
        margin-bottom: 30px;
    }

    .nav {
        display: flex;
        gap: 20px;
    }

    .nav a {
        padding: 12px 24px;
        background: linear-gradient(to right, #ff6ec4, #7873f5);
        color: #fff;
        text-decoration: none;
        border-radius: 12px;
        font-size: 16px;
        font-weight: bold;
        transition: 0.3s ease;
        box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
    }

    .nav a:hover {
        box-shadow: 0 0 10px #ff6ec4, 0 0 20px #7873f5;
    }
</style>
</head>
<body>
	<h1>📞 Phonebook Management System</h1>
	<div class="nav">
		<a href="add_contact.jsp">Add Contact</a> <a href="viewContacts">View
			Contacts</a>
		<a href="add_contact.jsp">Add Contact</a>
		<a href="view_contacts.jsp">View Contacts</a>
	</div>
</body>
</html>