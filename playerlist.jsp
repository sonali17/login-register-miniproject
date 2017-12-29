<%-- 
    Document   : playerlist
    Created on : 28-Dec-2017, 00:19:19
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
            
            
            
            
            Class.forName("com.mysql.jdbc.Driver");
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
            Statement stmt = con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from player"); 
            out.println("<html>");
            out.println("<body>");
            out.println("<h1>Player List</h1>");
            out.println("<table>");
            while(rs.next())
            {
                String fname=rs.getString(1);
                String lname=rs.getString(2);
                String email;
                out.println("<tr>");
                out.println("<td><a href='playerdetail.jsp?emailid="+rs.getString(3)+"'>" + fname + " " + lname +"</td></tr>");
                
                out.println("</table>");
                
            }
            out.println("</body>");
            out.println("</html>");
            %>
    </body>
</html>
