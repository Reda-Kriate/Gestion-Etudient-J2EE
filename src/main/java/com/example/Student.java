package com.example;

public class Student {
    public int id ;
    public String nom;
    public String prenom;
    public int age;
    public String date;

//    public Student(int id, String nom, String prenom, int age) {
//        this.id = id;
//        this.nom = nom;
//        this.prenom = prenom;
//        this.age = age;
//    }

    public String getNom() {
        return nom;
    }

    public int getId() {
        return id;
    }

    public int getAge() {
        return age;
    }

    public String getPrenom() {
        return prenom;
    }

    public String getDate() {
        return date;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
