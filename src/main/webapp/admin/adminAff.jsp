<%@ page import="java.sql.Connection" %>
<%@ page import="com.example.Db" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.ResultSet" %>
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
            width: 70%;
        }

        h1 {
            text-align: center;
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #2980b9;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:nth-child(even) td {
            background-color: #f2f2f2;
        }

        tr:hover td {
            background-color: #dfe6e9;
        }

        p {
            text-align: center;
            color: #34495e;
            font-size: 18px;
            margin-top: 15px;
        }

    </style>


</head>
<body>
<div>
<h1>
    Utilisateurs
</h1>
<table>
    <tr>
        <th>Id</th>
        <th>User Name</th>
        <th>User</th>
        <th>Password</th>
        <th>Fonction</th>
    </tr>
    <%

        Connection con = Db.connectionDb("login");
        int i = 0;
        try {
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from auth");

            while (rs.next()){
                i++;

                %>
    <tr>
        <td> <%=rs.getInt(1)%> </td>
        <td> <%=rs.getString(3)%> </td>
        <td> <%=rs.getString(2)%> </td>
        <td> <%=rs.getString(4)%> </td>
        <td> <%=rs.getString(5)%> </td>

    </tr>
    <%
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    %>





</table></br></br>
<p>(<%=i%>) Utlisateur (s)...</p>
</div>
</body>
</html>
