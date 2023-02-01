package com.example.javawebproject.dao;

import com.example.javawebproject.model.User;

import java.util.ArrayList;

public interface UserDao extends Dao{
// 按id查询客户方法
public  ArrayList<User> findByNum (String num) throws DaoException;
    public int insertUser(String a,String b,int c,String d,String e,int f) throws DaoException;
public  int  updatePassword(String Uno,String pas) throws DaoException;
}
