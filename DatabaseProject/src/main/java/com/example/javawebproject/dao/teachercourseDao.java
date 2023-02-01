package com.example.javawebproject.dao;

import com.example.javawebproject.model.teachercourse;

import java.util.ArrayList;

public interface teachercourseDao extends Dao {
    // 按id查询客户方法
    public ArrayList<teachercourse> findByNo(String num) throws DaoException;
    public ArrayList<teachercourse> findAll() throws DaoException;
    public  ArrayList<teachercourse> findByTerm (int num,String id) throws DaoException;
}
