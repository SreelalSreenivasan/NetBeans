<%-- 
    Document   : book_redirect
    Created on : 3 Aug, 2015, 11:17:35 AM
    Author     : HASNA
--%>

<%@page import="rapidtechs.omtrs.entity.ShowTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%

    
    String gname= (String) request.getParameter("girija");
    String jname= (String) request.getParameter("jose");
    String sname= (String) request.getParameter("sapna");
    String rname= (String) request.getParameter("ragam");
    int count=Integer.parseInt((String) request.getParameter("tcount"));
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omtrs", "root", "root");
        Statement st = con.createStatement();
        ResultSet rs;
        String time=jname;
        /*if(!gname.isEmpty())
        {
            rs = st.executeQuery("SELECT * FROM stime_ragam");
            time=gname;
        }
        else if(!jname.isEmpty())
        {
            rs = st.executeQuery("SELECT * FROM stime_jose");
            time=jname;
        }
        else if(!sname.isEmpty())
        {
            rs = st.executeQuery("SELECT * FROM stime_sapna");
            time=sname;
        }
        else if(!rname.isEmpty())
        {
            rs = st.executeQuery("SELECT * FROM stime_ragam");
            time=rname;
        }
        else
            rs=null;*/
            rs = st.executeQuery("SELECT * FROM stime_jose");
        ShowTime status = null;
        while (rs.next())
        {
            status = new ShowTime();
            status.stime_noon = Integer.parseInt(rs.getString("seat_avail_noon"));
            status.stime_matinee = Integer.parseInt(rs.getString("seat_avail_matinee"));
            status.stime_first = Integer.parseInt(rs.getString("seat_avail_first"));
            status.stime_second = Integer.parseInt(rs.getString("seat_avail_second"));
            
        }
        
            if (time.equals("jn"))
                    {
                if(status.stime_noon>count)
                {
                    status.stime_noon=status.stime_noon-count;
                    st.executeUpdate("UPDATE stime_jose SET seat_avail_noon="+status.stime_noon+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
   
            else if(time.equals("gm")){
                if(status.stime_matinee>count)
                {
                    
                    status.stime_matinee=status.stime_matinee-count;
                    st.executeUpdate("UPDATE stime_girja SET seat_avail_matinee="+status.stime_matinee+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("gf")){
                if(status.stime_first>count)
                {
                    
                    status.stime_first=status.stime_first-count;
                    st.executeUpdate("UPDATE stime_girja SET seat_avail_first="+status.stime_first+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("gs")){
                if(status.stime_second>count)
                {
                    
                    status.stime_second=status.stime_second-count;
                    st.executeQuery("UPDATE stime_girja SET seat_avail_second="+status.stime_second+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("sn")){
                if(status.stime_noon>count)
                {
                    
                    status.stime_noon=status.stime_noon-count;
                    st.executeQuery("UPDATE stime_sapna SET seat_avail_noon="+status.stime_noon+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("sm")){
                if(status.stime_matinee>count)
                {
                    
                    status.stime_matinee=status.stime_matinee;
                    st.executeQuery("UPDATE stime_sapna SET seat_avail_matinee="+status.stime_matinee+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("sf")){
                if(status.stime_first>count)
                {
                    
                    status.stime_first=status.stime_first-count;
                    st.executeQuery("UPDATE stime_sapna SET seat_avail_first="+status.stime_first+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("ss")){
                if(status.stime_second>count)
                {
                    status.stime_second=status.stime_second-count;
                    st.executeQuery("UPDATE stime_sapna SET seat_avail_second="+status.stime_second+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("gn")){
                if(status.stime_noon>count)
                {
                    
                    status.stime_noon=status.stime_noon-count;
                    st.executeQuery("UPDATE stime_girija SET seat_avail_noon="+status.stime_noon+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("jm")){
                if(status.stime_matinee>count)
                {
                    
                    status.stime_matinee=status.stime_matinee-count;
                    st.executeQuery("UPDATE stime_jose SET seat_avail_matinee="+status.stime_matinee+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("jf")){
                if(status.stime_first>count)
                {
                    
                    status.stime_first=status.stime_first-count;
                    st.executeQuery("UPDATE stime_jose SET seat_avail_first="+status.stime_first+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("js")){
                if(status.stime_second>count)
                {
                    
                    status.stime_second=status.stime_second-count;
                    st.executeQuery("UPDATE stime_jose SET seat_avail_second="+status.stime_second+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("rn")){
                if(status.stime_noon>count)
                {
                    
                    status.stime_noon=status.stime_noon-count;
                    st.executeQuery("UPDATE stime_ragam SET seat_avail_noon="+status.stime_noon+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("rm")){
                if(status.stime_matinee>count)
                {
                    
                    status.stime_matinee=status.stime_matinee-count;
                    st.executeQuery("UPDATE stime_ragam SET seat_avail_noon="+status.stime_matinee+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("rf")){
                if(status.stime_first>count)
                {
                    
                    status.stime_first=status.stime_first-count;
                    st.executeQuery("UPDATE stime_ragam SET seat_avail_first="+status.stime_first+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            }
            else if(time.equals("rs")){
                if(status.stime_second>count)
                {
                    
                    status.stime_second=status.stime_second-count;
                    st.executeQuery("UPDATE stime_ragam SET seat_avail_second="+status.stime_second+";");
                    response.sendRedirect("proces.jsp");
                }
                else
                {
                    response.sendRedirect("index.html");
                }
                
            
            }
            else if(time.isEmpty())
            {
                response.sendRedirect("no_seat.jsp");
            }

    }
%>