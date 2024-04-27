<%@ page contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.example.travel_booking_website.ApplicationDB" %>
<%
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");


    //Get the database connection
    ApplicationDB db = new ApplicationDB();
    Connection con = db.getConnection();

    //Create a SQL statement
    Statement stmt = con.createStatement();
    ResultSet rs;

    rs = stmt.executeQuery("select * from customer where email='" + email + "' and password='" + pass + "'");
    if (rs.next()) {
        session.setAttribute("email", email);
        out.println("welcome " + email);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("customerHome.jsp");
    } else {
        out.println("Invalid email or password. <a href='index.jsp'>Please try again</a>");
    }
%>