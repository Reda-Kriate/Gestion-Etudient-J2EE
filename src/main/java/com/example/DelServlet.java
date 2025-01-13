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
import java.util.Objects;

@WebServlet("/DelServlet")
public class DelServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        String fonc = (String)session.getAttribute("fonction");
        String link1;
        if(Objects.equals(fonc, "admin")){
            link1 = "/goldLib_war_exploded/StudentHomeAdmin.jsp";
        }else{
            link1 = "/goldLib_war_exploded/StudentHome.jsp";
        }
        if (id > 0) {

            boolean status = StudentDAO.supprimer(id);
            if (status) {
                PrintWriter out = response.getWriter();
                out.print("<p>Etudient supprimer ...</p>");

                out.print("<a href=" + link1 + ">Retour</a>");
            } else {
                PrintWriter out = response.getWriter();
                out.print("<p>Erreur l'ID Indisponible. </p>");
                String link = "/goldLib_war_exploded/supprimer.jsp";
                out.print("<a href=" + link + ">Retour</a>");
            }
        }else{
            PrintWriter out = response.getWriter();
            out.print("<p>Erreur entrer un ID plus grand que 0 !. </p>");
            String link = "/goldLib_war_exploded/supprimer.jsp";
            out.print("<a href=" + link + ">Retour</a>");
        }


    }
}

