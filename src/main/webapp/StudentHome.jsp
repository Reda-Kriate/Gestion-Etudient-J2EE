<%@ page import="com.mysql.cj.Session" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
  String login ="";
  if(session.getAttribute("login")!= null){
      login = session.getAttribute("login").toString();
  }else{
    response.sendRedirect("auth.jsp");
  }

%>
  <head>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 20px;
        background-color: #f9f9f9;
        color: #333;
      }

      h1 {
        text-align: center;
        color: #444;
        margin-bottom: 30px;
      }

      h3 {
        color: #555;
        border-bottom: 2px solid #ccc;
        padding-bottom: 5px;
        margin-bottom: 20px;
      }

      div {
        margin-bottom: 30px;
        padding: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        background-color: #fff;
        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
      }

      a {
        display: inline-block;
        margin: 5px 10px;
        padding: 10px 20px;
        text-decoration: none;
        color: white;
        background-color: #007bff;
        border-radius: 5px;
        font-size: 14px;
        transition: background-color 0.3s ease;
      }

      a:hover {
        background-color: #0056b3;
      }

      a:active {
        background-color: #003d80;
      }
    </style>
    <title>Gestion Etudients</title>
  </head>
  <body>
  <h1>Bonjour <%=login%></h1>
    <div>
      <a href="aff.jsp">Afficher les etudients</a>
      <a href="affId.jsp">Afficher par ID</a>
      <a href="ajoute.jsp">Ajouter etudient</a>
      <a href="supprimer.jsp">Suprimmer etudient</a>
      <a href="delAll.jsp">Suprimer tout les etudient</a>
    </div>

  <a href="Logout">LogOut</a>
  </body>
</html>
