<%-- 
    Document   : edit
    Created on : 28-Dec-2017, 00:50:25
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
            
            //String email=request.getParameter("email");
            //String password=request.getParameter("pwd");
            
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            Statement stmt = con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from officer where email='"+email+"'"); 
            if(rs.next())
            {
                  
            }
            
            
            
            
            %>
            
            <a href="index.html">Home</a>
    </body>
</html>
