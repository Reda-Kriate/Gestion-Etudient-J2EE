<%@ page import="java.util.Objects" %><%--
  Created by IntelliJ IDEA.
  User: redakriate
  Date: 12/1/2025
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

  if(session.getAttribute("login") == null)
    response.sendRedirect("auth.jsp");


%>
<%
  String login ="";
  String Link;
  if(session.getAttribute("login") != null && !Objects.equals(session.getAttribute("fonction"),"admin")){
    login = session.getAttribute("login").toString();
    Link = "/goldLib_war_exploded/StudentHome.jsp";

  }else{
    Link = "/goldLib_war_exploded/StudentHomeAdmin.jsp";
  }

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

    h3 {
      text-align: center;
      color: #444;
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 10px;
      color: #333;
      font-weight: bold;
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

    a {
      display: block;
      margin-top: 10px;
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
  <h3>Delete all Students</h3>
  <form method="post" action="DelAllServ">
    <label>vous êtes sûr ??</label></br></br>
    <input type="submit" value="Confirmer"></br></br>

    <a href=<%=Link%> >Non</a>


  </form>
</div>
</body>
</html>
