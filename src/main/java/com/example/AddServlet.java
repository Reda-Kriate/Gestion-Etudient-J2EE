package com.example;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;


@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
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

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String age = request.getParameter("age");

        PrintWriter out = response.getWriter();

        if(age.isEmpty() || nom.isEmpty() || prenom.isEmpty()){
            out.print("<p>Erreur verifier les donnees !!!! </p>");
            String link1 = "/goldLib_war_exploded/ajoute.jsp";
            out.print("<a href="+link1+">Retour</a>");

        }else {

            int age1 = Integer.parseInt(age);
            try {

                boolean status = StudentDAO.ajouter(nom, prenom, age1);
                if (status) {
                    out.print("étudient ajouté ...  ");
                } else {
                    out.print("<p>Erreur 0 row Added !!!</p>");
                    String link2 = "/goldLib_war_exploded/ajoute.jsp";
                    out.print("<a href="+link2+">Retour Home</a>");
                }

            } catch (Exception e) {
                throw new RuntimeException(e);
            }

        }

    }
}
