<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>Account Balance | LARA Bank</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(135deg, #e3f2fd, #bbdefb);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .balance-container {
      background-color: white;
      padding: 40px 50px;
      border-radius: 16px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
      text-align: center;
      max-width: 600px;
      animation: fadeIn 0.8s ease-in-out;
    }

    h1 {
      color: #1976d2;
      font-size: 28px;
      margin-bottom: 20px;
    }

    p {
      font-size: 22px;
      font-weight: bold;
      color: #333;
    }

    a {
      display: inline-block;
      margin-top: 20px;
      padding: 10px 22px;
      background-color: #0288d1;
      color: white;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
      transition: background-color 0.3s ease;
    }

    a:hover {
      background-color: #01579b;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class="balance-container">
    <h1>Your Current Account Balance</h1>
    <p>
      
      <%
        session = request.getSession(false);
        out.print(session.getAttribute("bal"));
      %>
    </p>
    <a href="Home.html">Back to Home</a>
  </div>

  <script>
    console.log("Balance page loaded ");
  </script>
</body>
</html>
