<%@ page contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*"%>
<%@ page import="org.example.travel_booking_website.ApplicationDB" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <%
  			//String userId = (session.getAttribute("customerId")).toString();
			
			//String d = request.getParameter("userId");
			try {

					//Get the database connection
					ApplicationDB db = new ApplicationDB();
					Connection con = db.getConnection();	
					
					//Create a SQL statement
					Statement stmt = con.createStatement();
					
					String message = request.getParameter("message");
					String customerId = request.getParameter("id");
					

			        String increment ="INSERT INTO question(questionId,message,reply,customer_user_userId,answered,alert) VALUES (?,?,?,?,?,?)";
			        PreparedStatement ps;
			        ps = con.prepareStatement(increment, Statement.RETURN_GENERATED_KEYS);
				
					//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		
				
					ps.setNull(1, Types.NULL);
					ps.setString(2, message);
					ps.setString(3, "");
					ps.setInt(4, Integer.parseInt(customerId)); 
					ps.setString(5, "");
					ps.setString(6, "No");
					ps.executeUpdate();
					
					//stmt.executeUpdate(str);
					
					out.print("Message sent.");
					con.close();

			} catch (Exception e) {
					out.print(e);
					out.print("Message failed to send :()");
			}
			  %>
</body>
</html>