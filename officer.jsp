<%-- 
    Document   : officer
    Created on : 27-Dec-2017, 06:02:22
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
            
            String email=request.getParameter("email");
            String password=request.getParameter("pwd");
            
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            Statement stmt = con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from officer where email='"+email+"'"); 
            if(rs.next())
            {
                if(rs.getString(4).equals(password))
                {out.println("welcome"+email);
                out.println("<a href='playerlist.jsp'><h5 align='center'><b><font size='6'>View players</font></b></h5></a>");
                }
                else
                  out.println("Invalid password try again");  
            }
            
            
            
            
            %>
            <br>
            <br>
            <a href="index.html"><h5 align="center"><b><font size="6"></font></b></h5>Home</a>
    </body>
</html>
