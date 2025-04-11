<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="ISO-8859-1">
  <title>Loan Application Submitted | LARA Bank</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #e1f5fe, #b3e5fc);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .message-box {
      background-color: white;
      padding: 40px;
      border-radius: 16px;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
      text-align: center;
      max-width: 600px;
      animation: slideIn 0.5s ease-out;
    }

    h1 {
      color: #0277bd;
      font-size: 26px;
      margin-bottom: 20px;
    }

    p {
      font-size: 18px;
      color: #333;
      margin: 10px 0;
    }

    a {
      display: inline-block;
      margin-top: 20px;
      padding: 10px 20px;
      background-color: #0288d1;
      color: white;
      text-decoration: none;
      border-radius: 8px;
      font-weight: bold;
      transition: background-color 0.3s;
    }

    a:hover {
      background-color: #01579b;
    }

    @keyframes slideIn {
      from { opacity: 0; transform: translateY(30px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
  <div class="message-box">
    <h1>Thank You for Applying!</h1>
    <p>
      <%
        session = request.getSession(false);
        String name = (String) session.getAttribute("name");
        String email = (String) session.getAttribute("email");
      %>
      Dear <strong><%= name %></strong>, thank you for showing your interest in our loans at LARA Bank.
    </p>
    <p>Our executive will contact you soon at your email address:</p>
    <p><strong><%= email %></strong></p>
    <a href="Home.html">Back to Home</a>
  </div>

  <script>
    console.log("Loan Success page loaded for <%= name %>");
  </script>
</body>
</html>
