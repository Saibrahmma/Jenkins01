<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime, java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Diwali Wishes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: radial-gradient(circle at top left, #FFD3A5, #FD6585);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;
            color: white;
        }
        .card {
            border-radius: 25px;
            padding: 3rem;
            background: rgba(0, 0, 0, 0.5);
            box-shadow: 0 8px 25px rgba(0,0,0,0.3);
        }
        h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }
    </style>
</head>
<body>
    <div class="card text-center">
        <%
            String username = request.getParameter("username");
            String empid = request.getParameter("empid");
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd MMM yyyy, hh:mm a");
            String currentTime = LocalDateTime.now().format(dtf);
        %>
        <h2>🎆 Happy Diwali, <%= username %>! 🎆</h2>
        <p>Your Employee ID: <strong><%= empid %></strong></p>
        <p>Wishing you joy, prosperity, and success!</p>
        <p><small>Time: <%= currentTime %></small></p>
    </div>
</body>
</html>
