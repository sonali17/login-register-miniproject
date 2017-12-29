<%-- 
    Document   : player
    Created on : 27-Dec-2017, 06:02:08
    Author     : Sonali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> </title>
    </head>
    <body>
        <%@page import = "java.sql.*" %>
        <%@page import = "javax.sql.*" %>
        <%
            
            String email=request.getParameter("email");
            String password=request.getParameter("pwd");
            
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            Statement stmt = con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from player where email='"+email+"'"); 
            if(rs.next())
            {
                if(rs.getString(4).equals(password))
                { out.println("welcome"+email);
                  out.println("<a href='edit.jsp?emailid="+rs.getString(3)+"'>Edit/Update details</a>");
                }
                
                else
                  out.println("Invalid password try again");  
            }
            
            
            
            
            %>
            
            <br>
            <a href="index.html"><h5 align="center"><b><font size="6">Home</font></b></h5></a>
    </body>
</html>
