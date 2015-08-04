<%-- 
    Document   : createNewUser
    Author     : Sreelal
--%>

<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
    String message = "";
    String nameStr = (String)request.getParameter("name");
    String emailStr = (String)request.getParameter("email");
    String phoneStr = (String)request.getParameter("phone");
    String usernameStr = (String)request.getParameter("username");
    String passStr = (String)request.getParameter("password");
    System.out.println("Breakpoint definition");
    try
    {
        int c;
        Random t = new Random();
        c=t.nextInt(100);
        String Id="a"+t;
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omtrs", "root", "root");
        Statement st = con.createStatement();
        System.out.println("Breakpoint connection");
        int phoneVal=Integer.parseInt(phoneStr);
        System.out.println("Breakpoint conversion"+t);
        st.executeUpdate("INSERT INTO users (ID,USERNAME,PASSWORD,NAME, EMAIL ,PHONE) VALUES ('"+Id+"','" + usernameStr + "','" + passStr + "','" + nameStr + "','" + emailStr + "','" + phoneVal +"')");
        System.out.println("Breakpoint updation");
        st.close();
        con.close();
        message = "New user has been added successfully ";
    }
    catch (SQLException e)
    {
        System.out.println("Could not connect");
        message = "Can not add new user , some issue with database connection ";
    }
    finally
    {
%>
<script>
    window.alert('<%=message%>');
</script>
<%
        session.setAttribute("regStatus", message);
        response.sendRedirect("index.html");
    }
%>

