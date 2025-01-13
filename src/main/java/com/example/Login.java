package com.example;

import java.io.*;
import java.sql.*;
import java.util.Objects;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import static java.lang.Class.forName;

@WebServlet("/Login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException , ServletException {
        HttpSession session = request.getSession();
        String login = request.getParameter("user");
        String userName= request.getParameter("user_name");
        String passw = request.getParameter("pwd");

        String url = "jdbc:mysql://localhost:3306/login";
        String user = "root";
        String pw = "0668196287reda";
        String query = "select id from auth where user=? AND password=?";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,user,pw);
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1,login);
            ps.setString(2,passw);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){

                PreparedStatement st = con.prepareStatement("select user_name,fonction from auth where user=? AND password=?");
                st.setString(1,login);
                st.setString(2,passw);
                ResultSet rs2 = st.executeQuery();


                if(rs2.next()){
                     if(Objects.equals(rs2.getString(2), "admin")){
                        session.setAttribute("login", rs2.getString(1));
                        session.setAttribute("fonction", rs2.getString(2));

                        response.sendRedirect("StudentHomeAdmin.jsp");
                    }else{
                        session.setAttribute("login", rs2.getString(1));
                         session.setAttribute("fonction", rs2.getString(2));
                        response.sendRedirect("StudentHome.jsp");
                    }
                }
            }else{
                response.sendRedirect("auth.jsp");
            }
            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}

