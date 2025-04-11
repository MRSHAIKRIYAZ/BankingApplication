<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
<style>
  body {
    margin: 0;
    font-family: Arial, sans-serif;
    background: #f0f8ff;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  .container {
    background: white;
    padding: 30px 40px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    text-align: center;
  }

  h1 {
    color: #0277bd;
    margin-bottom: 20px;
  }

  p {
    font-size: 18px;
    color: #333;
    margin: 10px 0;
  }

  .back-link {
    margin-top: 20px;
    display: inline-block;
    padding: 10px 16px;
    background-color: #0288d1;
    color: white;
    text-decoration: none;
    border-radius: 8px;
    transition: background-color 0.3s ease;
  }

  .back-link:hover {
    background-color: #01579b;
  }
</style>
</head>
<body>
  <div class="container">
    <h1>Amount Transfer Details</h1>
    <%
      session = request.getSession();
      java.util.ArrayList sal = (java.util.ArrayList) session.getAttribute("sal");
      java.util.ArrayList ral = (java.util.ArrayList) session.getAttribute("ral");
      java.util.ArrayList al = (java.util.ArrayList) session.getAttribute("al");

      for (int i = 0; i < sal.size(); i++) {
    %>
      <p><strong>Sender Account no:</strong> <%= sal.get(i) %></p>
      <p><strong>Receiver Account no:</strong> <%= ral.get(i) %></p>
      <p><strong>TRANSFER AMOUNT :</strong> <%= al.get(i) %></p>
      <hr style="margin: 20px 0;">
    <%
      }
    %>
    <a class="back-link" href="Home.html">Back to Home</a>
  </div>
</body>
</html>
