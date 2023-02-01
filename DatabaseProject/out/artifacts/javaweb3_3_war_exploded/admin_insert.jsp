<%--<jsp:useBean id="teacherList" scope="request" type=""/>--%>
<%@ page import="javax.swing.*" %>
<%@ page import="java.util.*" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<%@ page import="com.example.javawebproject.model.sumcredits" %>
<%@ page import="com.example.javawebproject.dao.sumcreditsDao" %>
<%@ page import="com.example.javawebproject.dao.sumcreditsDaoImpl" %>
<%@ page import="com.example.javawebproject.model.stuscore" %>
<%@ page import="com.example.javawebproject.dao.stuscoreDaoImpl" %>
<%@ page import="com.example.javawebproject.dao.stuscoreDao" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@include file="javax.util.*"%>--%>
<!DOCTYPE html>
<html lang="en">
<%
    String preURL=request.getRequestURL().toString();
    request.getSession().setAttribute("preURL",preURL);
    String Uno= (String) request.getSession().getAttribute("Uno");
    String name= (String) request.getSession().getAttribute("Uname");
%>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,300,400,500,700,900" rel="stylesheet">

    <title>添加新用户</title>
    <!--
    SOFTY PINKO
    https://templatemo.com/tm-535-softy-pinko
    -->

    <!-- Additional CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <link href="assets/css/font-awesome.css" rel="stylesheet" type="text/css">

    <link href="assets/css/templatemo-softy-pinko.css" rel="stylesheet" type="text/css">

</head>

<body>
<%
    HttpSession Session=request.getSession();
    Session.setAttribute("key","value");
%>
<div class="switch">
    <p style="color: red">
        <%
            String error=request.getParameter("error");
            if(error!=null && error.equals("error")){
        %>
        <script>
            alert("填写内容不得为空");
        </script>
        <%
                }
        %>
    </p>
</div>
<!-- ***** Preloader Start ***** -->
<div id="preloader">
    <div class="jumper">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<!-- ***** Preloader End ***** -->


<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a href="#" class="logo row">
                        <i class="fa fa-heartbeat mr-3 fa-3x text-black-50" aria-hidden="true"></i>
                        <h2 class="text-black-50">添加新用户</h2>
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="admin1.jsp" class="active">主页</a></li>
                        <%--                        <li><a href="SelectStudentAndTeacher_only.jsp">师生信息查询</a></li>--%>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->

<!-- ***** Welcome Area Start ***** -->
<div class="welcome-area bg-success" id="welcome" style="height: 60vh">

    <!-- ***** Header Text Start ***** -->
    <div class="header-text">
        <div class="container">
            <div class="row">
                <div class="offset-xl-3 col-xl-6 offset-lg-2 col-lg-8 col-md-12 col-sm-12">
                    <h1>添加新用户</h1>
                    <h5>添加新同学以及教师</h5>

                </div>
            </div>
        </div>
    </div>
    <!-- ***** Header Text End ***** -->
</div>
<!-- ***** Welcome Area End ***** -->

<div class="container">
    <div class="row">
        <div class="col-12">
            <form class="form-horizontal form-inline col-12" id="tform" action="registerActionServlet" method="post">
                <div class="form-group col-12 " >
                    <label class="col-3  control-label" title="编号" style="justify-content: left">编号</label>
                    <input type="text" class="col-8" name="Uno">
                </div>
                <div class="form-group col-12 " >
                    <label class="col-3  control-label" title="姓名" style="justify-content: left">姓名</label>
                    <input type="text" class="col-8" name="Uname">
                </div>
                <div class="form-group col-12 " >
                    <label class="col-3  control-label" title="年龄" style="justify-content: left">年龄</label>
                    <input type="text" class="col-8" name="Uage">
                </div>
                <div class="form-group col-12 " >
                    <label class="col-3  control-label" title="性别" style="justify-content: left">性别</label>
                    <select name="Usex" class="selectpicker form-control combox col-8">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                </div>
                <div class="form-group col-12 " >
                    <label class="col-3  control-label" title="密码" style="justify-content: left">密码</label>
                    <input type="password" class="col-8" name="Upasswords">
                </div>
                <div class="form-group col-12 " >
                    <label class="col-3  control-label" title="学期" style="justify-content: left">角色</label>
                    <select name="Uchar" class="selectpicker form-control combox col-8">
                        <option value="学生">学生</option>
                        <option value="教师">教师</option>
                        <option value="学生管理员">学生管理员</option>
                        <option value="教师管理员">教师管理员</option>
                    </select>
                </div>

                <input type="submit" class="col-2 offset-9" value="点击新建用户">
            </form>
        </div>
    </div>
</div>

<!-- ***** Footer Start ***** -->
<footer class="bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <p class="copyright">Copyright &copy; 2021 Zhejiang University Of Technology - Design: lv rui,wang tao</p>
            </div>
        </div>
    </div>
</footer>

<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/js/scrollreveal.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/imgfix.min.js"></script>

<!-- Global Init -->
<script src="assets/js/custom.js"></script>
</body>
</html>