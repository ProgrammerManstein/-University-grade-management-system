package com.example.javawebproject.dao;

import com.example.javawebproject.model.sumcredits;

import java.util.ArrayList;

public interface sumcreditsDao extends Dao {
    // 按id查询客户方法
    public ArrayList<sumcredits> findByNo(String num) throws DaoException;

    public ArrayList<sumcredits> findAll() throws DaoException;
}
