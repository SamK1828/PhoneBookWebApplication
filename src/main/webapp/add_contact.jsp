<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Contact</title>
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

        .notebook-container {
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

        .notebook-container::before {
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

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        label {
            position: absolute;
            top: -10px;
            left: 10px;
            background: #302b63;
            padding: 0 5px;
            font-size: 14px;
            color: #ff7675;
            pointer-events: none;
        }

        input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ff9ff3;
            border-radius: 10px;
            background: transparent;
            color: #fff;
            font-size: 16px;
            outline: none;
            transition: 0.3s ease;
        }

        input:focus {
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
    </style>
</head>
<body>

<div class="notebook-container">
    <h2>Add Contact 📒</h2>
    <form action="addContact" method="post">
        <div class="form-group">
            <label for="cname">Name</label>
            <input type="text" id="cname" name="cname" required>
        </div>

        <div class="form-group">
            <label for="cemail">Email</label>
            <input type="email" id="cemail" name="cemail" required>
        </div>

        <div class="form-group">
            <label for="cphone">Phone</label>
            <input type="tel" id="cphone" name="cphone" required>
        </div>

        <div class="form-group">
            <label for="caddress">Address</label>
            <input type="text" id="caddress" name="caddress">
        </div>

        <button type="submit">Save Contact</button>
    </form>
</div>

</body>
</html>