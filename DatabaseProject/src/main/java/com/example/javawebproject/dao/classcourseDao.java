package com.example.javawebproject.dao;

import com.example.javawebproject.model.classcourse;

import java.util.ArrayList;

public interface classcourseDao extends Dao {
    // 按id查询客户方法
    public ArrayList<classcourse> findByNo(String num) throws DaoException;

    public ArrayList<classcourse> findAll() throws DaoException;
}
