package com.example;

import java.io.PrintWriter;
import java.sql.*;

public class StudentDAO {
    public static ResultSet afficher(){
        Connection con = Db.connectionDb("student");
        ResultSet rs;
        try {
            Statement st = con.createStatement();
            rs = st.executeQuery("select * from students");


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        return rs;
    }
    public static Student afficherId(int id){
        Connection con = Db.connectionDb("student");
        Student s = new Student();
        try {
            PreparedStatement st = con.prepareStatement("select * from students where id=?");
            st.setInt(1,id);
            ResultSet rs = st.executeQuery();
            if (rs.next()){
                s.setId(rs.getInt(1));
                s.setNom(rs.getString(2));
                s.setPrenom(rs.getString(3));
                s.setAge(rs.getInt(4));
                s.setDate(rs.getString(5));
            }
            else{
                s = null;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return s;
    }

    public static Boolean ajouter(String nom,String prenom,int age){
        Connection con = Db.connectionDb("student");
        Student s = new Student();
        boolean statut;

        try{
            PreparedStatement st = con.prepareStatement("insert into students(name,prenom,age) values(?,?,?)");
            st.setString(1,nom);
            st.setString(2,prenom);
            st.setInt(3,age);
            st.setInt(3,age);
            int rowsAff = st.executeUpdate();
            if(rowsAff>0){
                statut = true;
            }else{
                statut = false;
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return statut;
    }
    public static boolean supprimer(int id){

        Connection con = Db.connectionDb("student");
        boolean status ;

        try {
            PreparedStatement pst = con.prepareStatement("delete from students where id=?");

            pst.setInt(1, id);
            int rows = pst.executeUpdate();
            if (rows > 0) {
                status = true;

            } else {
                status = false;
            }
        }catch(Exception e){
            throw new RuntimeException(e);

        }
        return status;
    }

    public static boolean supprimerTout(){

        Connection con = Db.connectionDb("student");
        boolean status ;

        try {
            PreparedStatement pst = con.prepareStatement("delete from students");

            int rows = pst.executeUpdate();
            if (rows > 0) {
                status = true;

            } else {
                status = false;
            }
        }catch(Exception e){
            throw new RuntimeException(e);

        }
        return status;
    }



}
