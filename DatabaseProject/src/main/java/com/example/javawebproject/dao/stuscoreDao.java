package com.example.javawebproject.dao;

import com.example.javawebproject.model.stuscore;

import java.util.ArrayList;

public interface stuscoreDao extends Dao {
    // 按id查询客户方法
    public ArrayList<stuscore> findByNo(String num) throws DaoException;
    public ArrayList<stuscore> findAll() throws DaoException;
    public  ArrayList<stuscore> findByCno (String num) throws DaoException;
    public  ArrayList<stuscore> findByTerm (int num,String id) throws DaoException;
}
