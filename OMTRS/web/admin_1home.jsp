<%-- 
    Document   : admin home
    Author     : Sreelal
--%>

<%@page import="rapidtechs.omtrs.entity.Constants"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>OMTRS | Admin Home</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
    </head>
    <body>
        <div class="main">
            <div class="main_resize">
                <div class="header">
                    <div class="logo">
                        <h1><a href="#"><span>OMTRS</span><small>Online Movie Ticket Reservation System</small></a></h1>
                    </div>
                    <div class="clr"></div>
                    <div class="menu_nav">
                        <ul>
                            <li class="active"><a href="admin_1home.jsp.jsp">Home</a></li>
                            <li><a href="admin_2users.jsp">Users</a></li>
                            <li><a href="admin_3keywords.jsp">Keywords</a></li>
                            <li><a href="admin_4settings.jsp">Settings</a></li>
                            <li><a href="index.jsp">Log Out</a></li>
                        </ul>
                        <div class="clr"></div>
                    </div>
                    <div class="hbg"><img src="images/header_images.jpg" width="923" height="291" alt="" /></div>
                </div>
                <div class="content">
                    <div class="content_bg">
                        <div class="mainbar">
                            <div class="article">
                                <h2><span>OMTRS </span> Admin Home Page</h2>
                            </div>
                            <!--friends list start  -->
                            <div class="osn_bg_template" style="width: 600px;">
                                <p>
                                    Welcome Mr.Administrator
                                </p>
                            </div>
                            <!--friends list end -->
                        </div>
                        <div class="sidebar">
                            <!--Status-->
                            <!--Options-->
                            <div class="gadget">
                                
                                <div class="clr"></div>
                            </div>

                        </div>
                        <div class="clr"></div>
                    </div>
                </div>
            </div>
            <div class="fbg">
                <div class="fbg_resize">
                    <div class="clr"></div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="footer_resize">
                <p class="lf">&copy; Copyright <a href="#">Rapid Techs</a>.</p>
                <div class="clr"></div>
            </div>
        </div>
</html>

