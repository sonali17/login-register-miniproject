<%-- 
    Document   : officerreg
    Created on : 27-Dec-2017, 04:39:10
    Author     : Sonali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import = "java.sql.*" %>
         <%@page import = "javax.sql.*" %>
        <%
            String fname=request.getParameter("firstname");
            String lname=request.getParameter("lastname");
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            String phone=request.getParameter("phone");
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            Statement stmt = con.createStatement();
            ResultSet rs;
            int i=stmt.executeUpdate("insert into officer values ('"+fname+"','"+lname+"','"+email+"','"+password+"','"+phone+"')"); 
            
            out.println("Registered");
            %>
            <br>
            <a href="officerlogin.html"><h5 align="center"><b><font size="6">Login</font></b></h5></a><br><br>
            <a href="index.html"><h5 align="center"><b><font size="6"></font></b></h5>Home</a>
    </body>
</html>
