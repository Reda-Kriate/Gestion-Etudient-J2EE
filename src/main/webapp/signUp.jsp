<%--
  Created by IntelliJ IDEA.
  User: redakriate
  Date: 12/1/2025
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SignUp</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background-color: #f9f9f9;
    }

    div {
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 8px;
      background-color: #fff;
      box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
      width: 300px;
      text-align: center;
    }

    h1 {
      text-align: center;
      color: #444;
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 5px;
      color: #333;
      font-weight: bold;
    }

    input[type="text"] {
      width: calc(100% - 20px);
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 14px;
    }

    input[type="submit"] {
      width: 100%;
      padding: 10px;
      color: white;
      background-color: #007bff;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
      background-color: #0056b3;
    }

    a {
      display: block;
      margin-top: 15px;
      text-align: center;
      text-decoration: none;
      color: #007bff;
      font-weight: bold;
      transition: color 0.3s ease;
    }

    a:hover {
      color: #0056b3;
    }
  </style>

</head>
<body>
<div>
<h1>SIGNUP PAGE</h1>
  <form action="Sign" method="POST">
    <label>User-Email</label>
    <input type="text" name="userS" required/></br></br>
    <label>User_Name</label>
    <input type="text" name="userName" required/></br></br>
    <label>Password</label>
    <input type="text" name="pwdS" required/></br></br>
    <input type="submit" value="sign up"/>
  </form>
<a href="auth.jsp">Login Page</a>
</div>
</body>
</html>
