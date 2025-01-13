<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
  String login ="";
  if(session.getAttribute("login") != null && Objects.equals(session.getAttribute("fonction"),"admin")){
    login = session.getAttribute("login").toString();
  }else{
    response.sendRedirect("auth.jsp");
  }

%>
<head>
  <title>Gestion Utilisateur</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f0f2f5;
      display: flex;
      justify-content: center;
      align-items: flex-start;
      height: 100vh;
    }

    div {
      background-color: #ffffff;
      padding: 30px;
      border-radius: 8px;
      box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
      margin-top: 50px;
      width: 70%;
    }

    h1 {
      text-align: center;
      font-size: 28px;
      color: #2c3e50;
      margin-bottom: 20px;
    }

    h3 {
      color: #34495e;
      font-size: 22px;
      margin-bottom: 15px;
    }

    a {
      display: block;
      color: #2980b9;
      font-size: 16px;
      text-decoration: none;
      margin: 10px 0;
      font-weight: bold;
      transition: color 0.3s ease;
    }

    a:hover {
      color: #1f6f9f;
    }

    .logout {
      margin-top: 30px;
      text-align: center;
    }

    .logout a {
      color: #e74c3c;
      font-size: 18px;
    }

    .logout a:hover {
      color: #c0392b;
    }

    div > div {
      margin-top: 20px;
    }

  </style>


</head>
<body>
<div>
<h1>Bonjour Mr l'ADMIN <%=login%> </h1>
<div>
  <h3>Table Utilisateur</h3><br><br>
  <a href="aff.jsp">Afficher les etudients</a>
  <a href="affId.jsp">Afficher par ID</a>
  <a href="ajoute.jsp">Ajouter etudient</a>
  <a href="supprimer.jsp">Suprimmer etudient</a>
  <a href="delAll.jsp">Suprimer tout les etudient</a>
</div>
<div>
  <h3>Table Admin</h3><br><br>
  <a href="/goldLib_war_exploded/admin/adminAff.jsp">Afficher les utilisateurs</a>
  <a href="/goldLib_war_exploded/admin/supprimerID.jsp">Supprimer un utilisateur</a>
  <a href="/goldLib_war_exploded/admin/ajAdm.jsp">Ajouter Utilisateur ou Admin</a>
  <a href="/goldLib_war_exploded/admin/modAdm.jsp">Modifier un Utilisateur</a>

</div>

<a href="Logout">LogOut</a>
</div>
</body>
</html>
