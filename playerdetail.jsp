<%-- 
    Document   : playerdetail
    Created on : 28-Dec-2017, 00:24:28
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
            
            String email=request.getParameter("emailid");
           
            
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            Statement stmt = con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from player where email='"+email+"'"); 
            if(rs.next())
            {
                out.println("FirstName = "+rs.getString(1)+"<br>LastName = "+rs.getString(2)+"<br>Email = "
                +rs.getString(3)+"<br>Password = "+rs.getString(4)+"<br>Age = "+rs.getInt(5)+"<br>Address = "+
                        rs.getString(6)+"<br>Phone number = "+rs.getString(7));
                
            }
            else
            out.print("record not found");
            
            
            
            
            %>
            <br>
            
            <a href="index.html"><h5 align="center"><b><font size="6">Home</font></b></h5></a>
    </body>
</html>
