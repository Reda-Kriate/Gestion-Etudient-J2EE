<%@ page import="java.sql.*" %>
<%@ page import="com.example.StudentDAO" %>
<%@ page import="com.example.Student" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

  if(session.getAttribute("login") == null)
    response.sendRedirect("auth.jsp");


%>
<html>
<head>
  <title>Habibi !</title>
  <style>
    div {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      width: 100%;
    }
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

    form {
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 8px;
      background-color: #fff;
      box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
      width: 300px;
      text-align: center;
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

    table {
      width: 80%;
      border-collapse: collapse;
      margin-top: 20px;
      text-align: left;
    }

    th, td {
      padding: 12px;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #007bff;
      color: white;
    }

    tr:hover {
      background-color: #f1f1f1;
    }

    .error {
      color: red;
      font-weight: bold;
    }
  </style>

</head>
<body>
<div>
<form method="get">

  <label>Inserer l'ID </label>
  <input type="number" name="id">
  <input type="submit" value="Chercher">

</form>

<table>
  <tr>
    <th>Id</th>
    <th>Name</th>
    <th>Prenom</th>
    <th>Age</th>
    <th>Date Inscription</th>
  </tr>
  <%

    String id = request.getParameter("id");
try{
    Student student = null;
    if(id != null && !id.isEmpty()){
      int idd = Integer.parseInt(id);
      if(idd>0){

      student = StudentDAO.afficherId(idd);

  %>
  <tr>
    <td> <%=student.getId()%> </td>
    <td> <%=student.getNom()%> </td>
    <td> <%=student.getPrenom()%> </td>
    <td> <%=student.getAge()%> </td>
    <td> <%=student.getDate()%> </td>
  </tr>
  <%
      }
      else{ %>

  <tr> Aucun Etudient, Id (<%=idd%>) Incorrect </tr></br></br>

  <% }
  }
  } catch (Exception e) { %>
  <tr> Aucun Etudient dans cette ID</tr></br></br>

<%
    System.out.println(e);} %>




</table></br></br>
</div>
</body>
</html>