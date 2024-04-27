<%@ page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,java.sql.*"%>
<%@ page import="org.example.travel_booking_website.ApplicationDB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<String> list = new ArrayList<String>();

		try {

			//Get the database connection
			ApplicationDB db = new ApplicationDB();
			Connection con = db.getConnection();	
			
			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Get the combobox from the index.jsp
			//Make a SELECT query from the sells table with the price range specified by the 'price' parameter at the index.jsp
			String str = "SELECT firstName,lastName,sum(totalFare) AS 'moneySpent' FROM ticket GROUP BY 'moneySpent'";
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(str);

		
			//parse out the results
			while (result.next()) {
				
				//Print out current bar name:
				out.print("The customer who spent the most money is:");
				out.print("<br>");
				out.print("First Name " + result.getString("firstName"));
				out.print("<br>");
				out.print("Last Name " + result.getString("lastName"));
				out.print("<br>");
				out.print("Money Spent " + result.getString("moneySpent"));
				out.print("<br>");
				break;
			}

			//close the connection.
			con.close();

		} catch (Exception e) {
			out.print(e);
		}
	%>

</body>
</html>