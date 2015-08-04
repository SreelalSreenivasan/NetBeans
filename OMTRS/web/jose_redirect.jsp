<%--
    Document   : theaters
    Created on : 1 Aug, 2015, 10:19:02 AM
    Author     : Sreelal
--%>

<%@page import="rapidtechs.omtrs.entity.ShowTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%



    int show = Integer.parseInt(request.getParameter("show"));
    
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omtrs", "root", "root");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM stime_jose");
        ShowTime status = null;


        while (rs.next())
        {
            status = new ShowTime();
            status.stime_noon = Integer.parseInt(rs.getString("seat_avail_noon"));
            status.stime_matinee = Integer.parseInt(rs.getString("seat_avail_matinee"));
            status.stime_first = Integer.parseInt(rs.getString("seat_avail_first"));
            status.stime_second = Integer.parseInt(rs.getString("seat_avail_second"));

        }
        switch(show)
        {
            case 1:{
                if(status.stime_noon!=0)
                {

                    response.sendRedirect("process_jose_noon.jsp");
                }

                break;
            }
            case 2:{
                if(status.stime_matinee!=0)
                    response.sendRedirect("process_jose_matinee.jsp");

                break;
            }
            case 3:{
                if(status.stime_first!=0)
                    response.sendRedirect("process_jose_first.jsp");

                break;
            }
            case 4:{
                if(status.stime_second!=0)
                    response.sendRedirect("process_jose_second.jsp");


                break;
            }
            default:
                   response.sendRedirect("no_seat.jsp");
                break;
            }

    }
%>