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

    
    
    String show = (String) request.getParameter("stime_sapna");
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omtrs", "root", "root");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM stime_sapna");
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
            case "Noon Show":{
                if(status.stime_noon>0)
                    response.sendRedirect("process_sapna_noon.jsp");
                else
                    response.sendRedirect("index.html");
                break;
            }
            case "Matinee":{
                if(status.stime_noon>0)
                    response.sendRedirect("process_sapna_matinee.jsp");
                else
                    response.sendRedirect("index.html");
                break;
            }
            case "First Show":{
                if(status.stime_noon>0)
                    response.sendRedirect("process_sapna_first.jsp");
                else
                    response.sendRedirect("index.html");
                break;
            }
            case "Second Show":{
                if(status.stime_noon>0)
                    response.sendRedirect("process_sapna_second.jsp");
                else
                    response.sendRedirect("index.html");
                break;
            }
            }
        }

    }
%>