<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime, java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Happy Diwali</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: radial-gradient(circle at top, #FFD700, #FF8C00, #8B0000);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            text-align: center;
            font-family: 'Poppins', sans-serif;
        }
        .card {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 20px;
            padding: 2rem 3rem;
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
        }
        h1 {
            font-size: 2.5rem;
            font-weight: bold;
        }
        .btn-back {
            background-color: #fff;
            color: #ff6600;
            border-radius: 30px;
            font-weight: 600;
            margin-top: 20px;
        }
        .btn-back:hover {
            background-color: #ffe4b3;
        }
    </style>
</head>
<body>
    <%
        String username = request.getParameter("username");
        if (username == null || username.trim().equals("")) {
            username = "Guest";
        }

        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd MMM yyyy, hh:mm a");
    %>

    <div class="card">
        <h1>✨ Happy Diwali, <%= username %>! ✨</h1>
        <p class="lead mt-3">Wishing you joy, prosperity, and bright lights everywhere!</p>
        <p><small><%= dtf.format(now) %></small></p>
        <a href="index.jsp" class="btn btn-back px-4">Back</a>
    </div>
</body>
</html>
