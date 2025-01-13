<%--
  Created by IntelliJ IDEA.
  User: redakriate
  Date: 12/1/2025
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    if(session.getAttribute("login") == null)
        response.sendRedirect("auth.jsp");


%>
<html>
<head>
    <title>Habibi !</title>
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
            color: #444;
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: #333;
            font-weight: bold;
        }

        input[type="number"] {
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
            background-color: #d9534f;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #c9302c;
        }
    </style>

</head>
<body>
<div>
      <h1>Supprimer Etudient par ID</h1>
  <form method="post" action="DelServlet">
    <label>Enter ID Student :</label></br></br>
    <input type="number" name="id"></br></br>
    <input type="submit" value="Supprimer">

  </form>
</div>
</body>
</html>
