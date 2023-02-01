package com.example.javawebproject.model;

import java.io.Serializable;

public class Student implements Serializable {
    private String Sno;
    private String Splace;
    private int Scredits;
    private String Ano;
    public Student(){}
    public String getSno() {
        return Sno;
    }
    public void setSno(String sno) {
        this.Sno = sno;
    }
    public String getSplace() {
        return Splace;
    }
    public void setSplace(String number) {
        this.Splace = number;
    }
    public int getScredits() {
        return Scredits;
    }
    public void setScredits(int scredits) {
        this.Scredits = scredits;
    }
    public String getAno() {
        return Ano;
    }
    public void setAno(String ano) {
        this.Ano = ano;
    }

}
