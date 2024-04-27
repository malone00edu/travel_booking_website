<%@ page contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.example.travel_booking_website.ApplicationDB" %>
<%
    String email = request.getParameter("email");
    String pass = request.getParameter("pass");
    String workerType = request.getParameter("role");


    //Get the database connection
    ApplicationDB db = new ApplicationDB();
    Connection con = db.getConnection();

    //Create a SQL statement
    Statement stmt = con.createStatement();
    ResultSet rs;

    if(workerType.equals("admin")) {
        rs = stmt.executeQuery("select * from administrator where email='" + email + "' and password='" + pass + "'");
        if (rs.next()) {
            session.setAttribute("email", email);
            out.println("welcome " + email);
            out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("adminHome.jsp");
        }else {
            out.println("Invalid email or password. <a href='employeeIndex.jsp'>Please try again</a>");
        }
    } else if (workerType.equals("rep")) {
        rs = stmt.executeQuery("select * from customerrep where email='" + email + "' and password='" + pass + "'");
        if (rs.next()) {
            session.setAttribute("email", email);
            out.println("welcome " + email);
            out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("representativeHome.jsp");
        }else {
            out.println("Invalid email or password. <a href='employeeIndex.jsp'>Please try again</a>");
        }
    }


%>