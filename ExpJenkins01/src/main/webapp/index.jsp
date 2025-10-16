<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #FFDEE9, #B5FFFC);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;
        }
        .card {
            border-radius: 20px;
            padding: 2rem;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            background: white;
        }
        .btn-custom {
            background-color: #ff6600;
            color: white;
            border-radius: 30px;
            font-weight: 600;
        }
        .btn-custom:hover {
            background-color: #ff8533;
        }
    </style>
</head>
<body>
    <div class="card text-center">
        <h2 class="mb-4">🎇 Happy Diwali Greeting 🎇</h2>
        <form action="wish.jsp" method="get">
            <div class="mb-3">
                <input type="text" class="form-control text-center" 
                       name="username" placeholder="Enter your name" required>
            </div>
            <div class="mb-3">
                <input type="text" class="form-control text-center" 
                       name="empid" placeholder="Enter your Employee ID" required>
            </div>
            <button type="submit" class="btn btn-custom px-4">Enter</button>
        </form>
    </div>
</body>
</html>
