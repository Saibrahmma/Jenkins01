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
            background: linear-gradient(135deg, #ff7e5f, #feb47b, #ffcc33, #ff9966);
            background-size: 400% 400%;
            animation: gradientShift 10s ease infinite;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
            text-align: center;
            font-family: 'Poppins', sans-serif;
            overflow: hidden;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        .card {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 25px;
            padding: 2.5rem 3.5rem;
            box-shadow: 0 10px 30px rgba(0,0,0,0.4);
            backdrop-filter: blur(8px);
            position: relative;
            z-index: 10;
        }

        h1 {
            font-size: 2.8rem;
            font-weight: bold;
            text-shadow: 2px 2px 10px rgba(255, 255, 255, 0.3), 0 0 20px #ffcc00;
            animation: glow 2s ease-in-out infinite alternate;
        }

        @keyframes glow {
            from { text-shadow: 0 0 10px #ff9, 0 0 20px #ff9933, 0 0 30px #ff6600; }
            to { text-shadow: 0 0 20px #ffff66, 0 0 40px #ffcc00, 0 0 60px #ff9900; }
        }

        .lead {
            font-size: 1.2rem;
            color: #fff5e1;
        }

        .btn-back {
            background-color: #fff;
            color: #ff6600;
            border-radius: 30px;
            font-weight: 600;
            margin-top: 20px;
            transition: all 0.3s ease;
        }

        .btn-back:hover {
            background-color: #ffd966;
            color: #a64b00;
            transform: scale(1.05);
        }

        /* Decorative diyas */
        .diya {
            position: absolute;
            bottom: 30px;
            width: 70px;
            height: 70px;
            background: radial-gradient(circle at top, #ffeb99, #ff6600 80%);
            border-radius: 50%;
            box-shadow: 0 0 25px #ffcc00;
            animation: flicker 1.5s infinite alternate;
        }

        @keyframes flicker {
            0% { opacity: 0.8; transform: scale(1); }
            100% { opacity: 1; transform: scale(1.1); }
        }

        .diya.left { left: 100px; }
        .diya.right { right: 100px; }

        /* Confetti effect */
        .confetti {
            position: absolute;
            width: 10px;
            height: 10px;
            background: #fff;
            animation: fall 4s linear infinite;
            opacity: 0.7;
        }

        @keyframes fall {
            0% { transform: translateY(-10px) rotate(0deg); opacity: 1; }
            100% { transform: translateY(100vh) rotate(720deg); opacity: 0; }
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

    <!-- Random confetti generation -->
    <%
        for (int i = 0; i < 25; i++) {
            int left = (int)(Math.random() * 100);
            String color = new String[]{"#ffcc00", "#ff66b2", "#66ffcc", "#66ccff", "#ff9966"}[(int)(Math.random() * 5)];
    %>
        <div class="confetti" style="left: <%= left %>%; background: <%= color %>; animation-delay: <%= Math.random() * 3 %>s;"></div>
    <% } %>

    <div class="card">
        <h1>✨ Happy Diwali, <%= username %>! ✨</h1>
        <p class="lead mt-3">May your life be filled with lights, laughter, and endless happiness!</p>
        <p><small><%= dtf.format(now) %></small></p>
        <a href="index.jsp" class="btn btn-back px-4">Back</a>
    </div>

    <div class="diya left"></div>
    <div class="diya right"></div>
</body>
</html>
