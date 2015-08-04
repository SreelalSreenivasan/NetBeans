<%-- 
    Document   : upcoming_movies
    Created on : 31 Jul, 2015, 3:57:28 PM
    Author     : Sreelal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>


<html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>OMTRS | Upcoming Movies</title>
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
                            <li class="active"><a href="user_1home.jsp">Home</a></li>
                            <li><a href="upcoming_movies.jsp">Upcoming Movies</a></li>
                            <li><a href="index.html">Log Out</a></li>
                        </ul>
                        <div class="clr"></div>
                    </div>
                    <div class="hbg"><img src="images/header_images.jpg" width="923" height="291" alt="" /></div>
                </div>
                <div class="content">
                    <strong>Welcome User!!!</strong> 
                        
                            <h2 class="star"><span>Upcoming Movies</span></h2>
                                <div class="clr"></div>
                                <ul class="sb_menu">
                                    <li class="active"><a href="#">Home</a></li>
                                    <li><a href="http://www.imdb.com/title/tt1502712?ref_=hm_cs_t0">Fantastic Four</a></li>
                                    <li><a href="http://www.imdb.com/title/tt2872750?ref_=hm_cs_t1">Shaun:The Sheep Movie</a></li>
                                    <li><a href="http://www.imdb.com/title/tt1638355/?ref_=cs_ov_tt">The Man From The U.N.C.L.E</a></li>
                                    <li><a href="http://www.imdb.com/title/tt2752772/?ref_=cs_ov_tt">Sinister 2</a></li>
                                </ul>
                                
                            </div>
                        </div>
                        </div>
                        <div class="clr"></div>
                    </div>
                </div>
            </div>     
        </div>
        
        <div class="footer">
            <div class="footer_resize">
                <p class="lf">&copy; Copyright <a href="#">Rapid Techs</a>.</p>
                <div class="clr"></div>
            </div>
        </div>
    </body>
   
</html>

