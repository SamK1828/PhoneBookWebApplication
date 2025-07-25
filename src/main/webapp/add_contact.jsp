<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Contact</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9f9f9;
            padding: 40px;
        }
        .form-container {
            width: 400px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px lightgray;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
        }
        label {
            margin-top: 15px;
            display: block;
        }
        button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: green;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: darkgreen;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Add New Contact</h2>
        <form action="addContact" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" required>

            <label for="phone">Phone:</label>
            <input type="text" name="phone" required>

            <label for="email">Email:</label>
            <input type="email" name="email">

            <label for="address">Address:</label>
            <textarea name="address" rows="3"></textarea>

            <button type="submit" name="action" value="add">Add Contact</button>
        </form>
    </div>
</body>
</html>
