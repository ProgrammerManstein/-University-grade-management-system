package com.example.javawebproject.model;

public class avggpa {
    private String Sno;
    private String Sname;
    private int Cterm;
    private double Score;
    public avggpa(){}
    public String getSno() {
        return Sno;
    }
    public void setSno(String sno) {
        this.Sno = sno;
    }
    public String getSname() {
        return Sname;
    }
    public void setSname(String number) {
        this.Sname = number;
    }
    public int getCterm() {
        return Cterm;
    }
    public void setCterm(int cterm) {
        this.Cterm = cterm;
    }
    public double getScore() {
        return Score;
    }
    public void setScore(double ano) {
        this.Score = ano;
    }
}
