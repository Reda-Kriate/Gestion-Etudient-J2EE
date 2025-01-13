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
    <title>Habibi Admin !</title>
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
            width: 60%;
        }

        h1 {
            text-align: center;
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-size: 18px;
            color: #2c3e50;
        }

        input[type="text"],
        input[type="number"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            width: 100%;
        }

        input[type="submit"] {
            padding: 12px;
            background-color: #2980b9;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #1d6f94;
        }

        p {
            text-align: center;
            color: #7f8c8d;
            font-size: 14px;
            margin-top: 15px;
        }

        .note {
            font-size: 14px;
            color: #e74c3c;
            text-align: center;
        }

    </style>


</head>
<body>

<div>
<h1>Modifier Utilisateur : </h1>
<form method="POST" action="AdmModServ">

    <label>Id: </label>
    <input type="number" name="id" required placeholder="Id de l'utilisateur " /></br></br>
    <label>New User_Name : </label>
    <input type="text" name="userName" required /></br></br>
    <label>New User : </label>
    <input type="text" name="user" required /></br></br>
    <label>Password :</label>
    <input type="text" name="pwd" required /></br></br>
    <label>New Fonction (optional):</label>
    <input type="text" name="fonction" placeholder="admin or client" /></br></br>
    <input type="submit" value="Modifier"></br></br>
    <p>NB : si la fonction n'est pas ajoutée, la fonction sera automatiquement un CLIENT !!!</p>
</form>

</div>
</body>
</html>
