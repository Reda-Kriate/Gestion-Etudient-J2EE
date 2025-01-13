<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.example.StudentDAO" %>
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
            width: 80%;
            text-align: center;
        }

        h1 {
            text-align: center;
            color: #444;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        p {
            font-size: 16px;
            color: #333;
        }
    </style>

</head>
<body>
<div>
<h1>
    Etudients disponible
</h1>
    <table>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Prenom</th>
            <th>Age</th>
            <th>Date Inscription</th>
        </tr>
        <%
                int i = 0;
                ResultSet rs = StudentDAO.afficher();
            try {
                while(rs.next()) {
                    i++;
                    %>
        <tr>
            <td> <%=rs.getInt(1)%> </td>
            <td> <%=rs.getString(2)%> </td>
            <td> <%=rs.getString(3)%> </td>
            <td> <%=rs.getInt(4)%> </td>
            <td> <%=rs.getString(5)%> </td>
        </tr>

               <% }

            } catch (Exception e) {
                throw new RuntimeException(e);
            }
%>


    </table></br></br>
        <p>(<%=i%>) Student(s)...</p>
</div>
</body>
</html>
