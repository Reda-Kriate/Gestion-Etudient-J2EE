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

@WebServlet("/admin/AdmAddServ")
public class AdmAddServ extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String userName = request.getParameter("userName");
        String user = request.getParameter("user");
        String pwd = request.getParameter("pwd");
        String fonction = request.getParameter("fonction");

        PrintWriter out = response.getWriter();

            try {
                Connection con = Db.connectionDb("login");
                PreparedStatement st = con.prepareStatement("insert into auth(user,user_name,password,fonction) values(?,?,?,?)");
                st.setString(1,user);
                st.setString(2,userName);
                st.setString(3,pwd);
                st.setString(4,fonction);
                int rowsAff = st.executeUpdate();
                if(rowsAff>0){
                    out.print("<p>Utilisateur Ajouté ... </p>");
                    String link = "/goldLib_war_exploded/StudentHomeAdmin.jsp";
                    out.print("<a href=" + link + ">Retour Home</a>");
                }else{
                    out.print("<p>Erreur 0 Utilisateur ajouté !</p>");
                    String link = "/goldLib_war_exploded/admin/ajAdm.jsp";
                    out.print("<a href=" + link + ">Retour</a>");
                }
            } catch (Exception e) {
                throw new RuntimeException(e);
            }

        }
    }

