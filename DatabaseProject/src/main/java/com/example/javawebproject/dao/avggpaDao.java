package com.example.javawebproject.dao;

import com.example.javawebproject.model.User;
import com.example.javawebproject.model.avggpa;

import java.util.ArrayList;

public interface avggpaDao extends Dao{
// 按id查询客户方法
public  ArrayList<avggpa> findByTerm (int num, int flag) throws DaoException;
}
