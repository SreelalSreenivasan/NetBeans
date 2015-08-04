<%-- 
    Document   : schoolWeb_login_redirect
    Author     : Sreelal
--%>

<%@page import="rapidtechs.omtrs.entity.Constants"%>
<%@ page import="rapidtechs.omtrs.entity.OmtrsUser"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 

<%

    
    
    String usernameStr = (String) request.getParameter("username");
    String passStr = (String) request.getParameter("password");
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/omtrs", "root", "root");
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("SELECT * FROM users where USERNAME = '" + usernameStr + "'");
        OmtrsUser user = null;
        while (rs.next())
        {
            user = new OmtrsUser();
            user.ID= rs.getString("ID");
            user.username = rs.getString("USERNAME");
            user.password = rs.getString("PASSWORD");
            user.name = rs.getString("NAME");
            user.email = rs.getString("EMAIL");
            user.phonenum = Integer.parseInt(rs.getString("PHONE"));
            session.setAttribute("UserName", user.name);
            session.setAttribute("UserID", user.ID);
            
        } 
        if (user == null)
        {
            out.println("Invalid User name ,Please enter a valid user name.");
        } 
        else if (user != null && usernameStr.equals(user.username) && !passStr.equals(user.password))
        {
            out.println("Invalid Password ,Please enter the correct password.");
        } 
        else if (usernameStr.equals("admin") && passStr.equals("admin"))
        {
            response.sendRedirect("admin_1home.jsp");
        } 
        else
        {
            response.sendRedirect("user_1home.jsp");
        }

    }
%>
