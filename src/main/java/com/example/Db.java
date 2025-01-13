package com.example;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Db {
    public static Connection connectionDb(String dbName){
        String url = "jdbc:mysql://localhost:3306/"+dbName;
        String user = "root";
        String pw = "0668196287reda";
        Connection con;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pw);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return con;
    }
}
