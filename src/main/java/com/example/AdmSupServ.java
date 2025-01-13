package com.example;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/admin/AdmSupServ")
public class AdmSupServ extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));

        if (id > 0) {

            Connection con = Db.connectionDb("login");

            PrintWriter out = response.getWriter();

            try {
                PreparedStatement pst = con.prepareStatement("delete from auth where id=?");
                pst.setInt(1, id);
                int rows = pst.executeUpdate();

            if (rows>0) {
                out.print("<p>Utilisateur avec l'Id ("+id+") est supprrimé </p>");
                String link = "/goldLib_war_exploded/StudentHomeAdmin.jsp";
                out.print("<a href=" + link + ">Retour Home</a>");
            } else {
                out.print("<p>Erreur l'ID Indisponible. </p>");
                String link = "/goldLib_war_exploded/admin/supprimerID.jsp";
                out.print("<a href=" + link + ">Retour</a>");
            }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

        }else{
            PrintWriter out = response.getWriter();
            out.print("<p>Erreur entrer un ID plus grand que 0 !. </p>");
            String link = "/goldLib_war_exploded/supprimerID.jsp";
            out.print("<a href=" + link + ">Retour</a>");
        }

    }
}
