package com.example;

import com.mysql.cj.Session;
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
import java.sql.ResultSet;

@WebServlet(name="Sign" , urlPatterns ="/Sign" )
public class Sign extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String login = request.getParameter("userS");
        String userName = request.getParameter("userName");
        String pwd = request.getParameter("pwdS");

        String url = "jdbc:mysql://localhost:3306/login";
        String user = "root";
        String pw = "0668196287reda";
        String query = "insert into auth(user,user_name,password) values(?,?,?)";
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,user,pw);
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1,login);
            pst.setString(2,userName);
            pst.setString(3,pwd);
            int rows = pst.executeUpdate();
            PrintWriter out = response.getWriter();
            if(rows>0){
                out.print("Successfly ....");
                response.sendRedirect("auth.jsp");
            }else{
                out.print("Erreur not added...");
                String link = "/goldLib_war_exploded/signUp.jsp";
                out.print("<a href=" + link + ">Retour</a>");
            }

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

}
