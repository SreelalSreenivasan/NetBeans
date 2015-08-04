<%-- 
    Document   : theaters
    Created on : 1 Aug, 2015, 10:19:02 AM
    Author     : Sreelal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<!DOCTYPE html>


<html>
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>OMTRS | Booking</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script>
            function display()
            {
                alert("We're sorry to inform you that we don't have seats!");
                return false;
            }
            </script>
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
                    <strong>Book your show!!!</strong> 
                        
                            <h2 class="star"><span>Booking</span></h2>
                                <div class="clr"></div>
                                <ul class="sb_menu">
                                    <li class="active"><a href="#">Home</a></li>
                                    <form name="seat_booking" action="book_redirect.jsp" method="POST" onsubmit="return display();">
                                        <table class="contenttable">
                                        <tr>
                                            <td>Name</td>
                                            <td>
                                                <input type="text" name ="name"/>
                                            </td>        
                                        </tr>
                                        <tr>
                                            <td>Username</td>
                                            <td>
                                                <input type="text" name ="username"/>
                                            </td>        
                                        </tr>
                                        <tr>
                                            <td>Ticket Count</td>
                                            <td>
                                                <input type="text" name ="tcount"/>
                                            </td>        
                                        </tr>
                                        <tr>
                                            <td> </td>
                                            <td> </td>        
                                        </tr>
                                        <tr>
                                            <td colspan="2">
                                                <input type="submit" value="Submit" id="button"/>
                                                <input type="reset" value="Reset" id="button1"/>
                                                <input type="hidden" name="girija" value="gm">
                                            </td>
                                            
                                        </tr>
                                    </table>
                                    </form>
                                    
                                    <!--li><a href="sapna_noon.jsp">Noon Show</a></li>
                                    <li><a href="sapna_matinee.jsp">Matinee</a></li>
                                    <li><a href="sapna_first.jsp">First Show</a></li>
                                    <li><a href="sapna_second.jsp">Second Show</a></li-->
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

