package com.example.javawebproject.dao;

import com.example.javawebproject.model.stuplace;

import java.util.ArrayList;

public interface stuplaceDao extends Dao {
    // 按id查询客户方法
    public ArrayList<stuplace> findByPlace(String p) throws DaoException;

    public ArrayList<stuplace> findAll() throws DaoException;
}
