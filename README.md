## Rutgers CS-336
Group 11 Members: Fayed R., Parth V., Taze B., and Gabby C.

# Online Travel Reservation System

## Overview
This JSP website enables users to interact with an online travel reservation system. Users can create an account, log in and out, book flights, view past and upcoming reservations, communicate with customer service, and search for questions and answers using a keyword filter.

## Features
- **Account Creation**: Users can sign up to create a personal account.
- **Authentication**: Login and logout functionality.
- **Flight Booking**: Interface for users to book flights.
- **Reservation Management**: Users can view their past and upcoming flight reservations.
- **Customer Service Messaging**: A messaging system for users to contact customer support and view incoming messages.
- **Search Functionality**: Users can search for questions and answers related to travel reservations by entering keywords.

## Database Schema
The database schema supports the following entities:
- `users`: Manages user accounts and authentication details.
- `flights`: Contains flight schedules, availability, and booking details.
- `reservations`: Records all flight bookings and reservation history.
- `messages`: Stores messages between users and customer service.
- `faq`: A searchable list of frequently asked questions and answers.

## How to Use
To use this schema, run the SQL script in your MySQL Workbench or any other MySQL database management tool. Ensure that you have the necessary privileges to create schemas and tables in your MySQL server.

To use the website, navigate to the homepage and follow the prompts to create an account or log in. Once authenticated, you will have access to all the features listed above.

Database employee credentials

    Administrator:
    email: admin@email.com
    password: adpass

    Customer Representive:
    email: emp@email.com
    password: empass

## Contributions
Contributions are welcome. Please fork the repository, make your changes, and submit a pull request.

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
