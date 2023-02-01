package com.example.javawebproject.controller;

import com.example.javawebproject.dao.DaoException;
import com.example.javawebproject.dao.UserDao;
import com.example.javawebproject.dao.UserDaoImpl;
import com.example.javawebproject.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.SQLException;
import java.util.ArrayList;

@WebServlet(name = "insertStudentActionServlet", value = "/insertStudentActionServlet")
public class insertStudentActionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        response.setContentType("text/html;charset=utf-8");
        HttpSession session=request.getSession();
        UserDao dao = new UserDaoImpl();
        response.setCharacterEncoding("utf-8");
        response.setHeader("content-type", "text/html;charset=utf-8");
        String message = "";
        try {
        String Sno= (String) session.getAttribute("Sno");
        String Splace=request.getParameter("Splace");
        String Ano= request.getParameter("Ano");
        if(Splace.equals("")||Ano.equals("")){
            response.sendRedirect(request.getContextPath()+"/insert_student.jsp?error=error");
            return;
        }
        else
        {
            boolean flag=false;
            try {
                CallableStatement cs=dao.getConnection().prepareCall("call Lvr_updateStudent18(?,?,?)");
                cs.setString(1,Sno);
                cs.setString(2,Splace);
                cs.setString(3, Ano);
                cs.execute();
                flag=true;
            } catch (DaoException | SQLException throwables) {

                throwables.printStackTrace();
            }
            if(flag)
                request.getRequestDispatcher("/admin_insert.jsp").forward(request,response);
            else if(!flag)
                response.sendRedirect(request.getContextPath()+"/insert_student.jsp?error=error");
            return;
        }
        }catch(Exception e) {
            System.out.println(e);
            message = "<li>查找记录错误！</li>" + e;
        }


    }
}
