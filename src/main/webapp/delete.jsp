<%@ page contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.example.travel_booking_website.ApplicationDB" %>
<html>
<body>
<%
	try{
	
		//Get the database connection
		ApplicationDB db = new ApplicationDB();
		Connection con = db.getConnection();	
		
		//Create a SQL statement
		Statement stmt = con.createStatement();
		//Get the combobox from the index.jsp
		String entity = request.getParameter("del");
		String entity2 = request.getParameter("val");
		//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the index.jsp
		String str = "DELETE FROM " +entity+ " WHERE " + entity + "Id = '" + entity2 + "'";
		//Run the query against the database.
		stmt.execute(str);
		
		out.print("Value deleted!");
		con.close();
	
	} catch (Exception e) {
		out.print(e);
	}
%>
</body>
</html>
