package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Objects;

@WebServlet("/DelAllServ")
public class DelAllServ extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();
        String fonc = (String)session.getAttribute("fonction");
        String link;
        if(Objects.equals(fonc, "admin")){
            link = "/goldLib_war_exploded/StudentHomeAdmin.jsp";
        }else{
            link = "/goldLib_war_exploded/StudentHome.jsp";
        }
        PrintWriter out = response.getWriter();
        boolean status = StudentDAO.supprimerTout();
        if(status) {
            out.print("<p>Tous les étudients sont Supprimés ");
            out.print("<a href=" + link + ">Retour Home</a>");
        }else{
            out.print("<p>Erreur survenue !!! ");
            String link1 = "/goldLib_war_exploded/delAll.jsp";
            out.print("<a href=" + link1 + ">Retour</a>");
        }
    }
}
