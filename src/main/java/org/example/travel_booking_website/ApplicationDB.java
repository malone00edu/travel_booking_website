package org.example.travel_booking_website;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ApplicationDB {

    public ApplicationDB() {
        // Attempt to load JDBC driver
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public Connection getConnection() {
        String connectionUrl = "jdbc:mariadb://localhost:3306/online_travel_reservation";
        try {
            return DriverManager.getConnection(connectionUrl, "malone", "acc00Db#06");
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        ApplicationDB dao = new ApplicationDB();
        Connection connection = dao.getConnection();

        if (connection != null) {
            System.out.println("Connection successful: " + connection);
            dao.closeConnection(connection);
        } else {
            System.out.println("Failed to make connection!");
        }
    }
}
