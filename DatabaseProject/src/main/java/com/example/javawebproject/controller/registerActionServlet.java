package com.example.javawebproject.controller;

import com.example.javawebproject.dao.UserDao;
import com.example.javawebproject.dao.UserDaoImpl;
import com.example.javawebproject.model.User;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "registerActionServlet", value = "/registerActionServlet")
public class registerActionServlet extends HttpServlet {
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
        ArrayList<User> adminlist=new ArrayList<User>();
        String message = "";
        try {
        String Uno=request.getParameter("Uno");
        String Uname=request.getParameter("Uname");
        String Uage= request.getParameter("Uage");
        String Usex=request.getParameter("Usex");
        String Upasswords=request.getParameter("Upasswords");
        String Uchar=request.getParameter("Uchar");
        int x = 0;
        if(Uchar.equals("学生"))
            x=0;
        else if(Uchar.equals("教师"))
            x=1;
        else if(Uchar.equals("学生管理员"))
            x=2;
        else if(Uchar.equals("教师管理员"))
            x=3;
        if(Uno.equals("")||Uname.equals("")||Upasswords.equals("")||Uage.equals("")){
            response.sendRedirect(request.getContextPath()+"/admin_insert.jsp?error=error");
            return;
        }
        else
        {
            int age=Integer.parseInt(Uage);
            dao.insertUser(Uno,Uname,age,Usex,Upasswords,x);
            if(x==0||x==2) {
                request.getRequestDispatcher("/insert_student.jsp").forward(request, response);
                session.setAttribute("Sno",Uno);
            }
            else if(x==1||x==3) {
                request.getRequestDispatcher("/insert_teacher.jsp").forward(request, response);
                session.setAttribute("Tno",Uno);
            }
        }
        }catch(Exception e) {
            System.out.println(e);
            message = "<li>查找记录错误！</li>" + e;
        }


    }
}
