# ✈️ Airline Flight Database

A DBMS mini project that models an airline flight system using SQL. It covers airlines, aircraft, airports, flights, flight schedules, passengers, bookings and tickets, built from an ER diagram into a relational database with primary keys, foreign keys, sample data and basic SQL queries.

**Name:** Rohit Yadav
**UID:** 202501100100218
**Section:** CS-C

## ER Diagram

![ER Diagram](images/er_diagram.png)

## Tables

| # | Table | Description |
|---|-------|-------------|
| 1 | `AIRLINE` | Airline details (name, country, phone) |
| 2 | `AIRCRAFT` | Aircraft model, capacity and manufacturer |
| 3 | `AIRPORT` | Airport name, country code and city |
| 4 | `FLIGHT` | Flight number and status; links airline, aircraft, source and destination airports |
| 5 | `FLIGHT_SCHEDULE` | Date, departure time, arrival time and duration of a flight |
| 6 | `PASSENGER` | Passenger name, email and phone |
| 7 | `BOOKING` | Booking date, status and total amount; belongs to a passenger |
| 8 | `TICKET` | Seat number, fare and class; belongs to a booking and a flight schedule |

## Relationships

- An airline **operates** many flights (`FLIGHT.Airline_ID`)
- A flight **has** one aircraft (`FLIGHT.Aircraft_ID`)
- A flight **departs from** and **arrives at** an airport (`Source_Airport_ID`, `Dest_Airport_ID`)
- A flight **has** schedules (`FLIGHT_SCHEDULE.Flight_ID`)
- A passenger **makes** bookings (`BOOKING.Passenger_ID`)
- A booking **has** tickets (`TICKET.Booking_ID`)
- A ticket is **for** a flight schedule (`TICKET.Schedule_ID`)

## Project Structure

```
airline-flight-database/
├── README.md
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   └── 03_queries.sql
├── docs/
│   ├── AIRLINE_FLIGHT_DATABASE_MINI_PROJECT.docx
│   └── ER_Diagram.pdf
└── images/
    ├── er_diagram.png
    ├── output_airline.png
    └── output_join.png
```

## How to Run

The SQL is written in **Oracle** syntax (`NUMBER`, `VARCHAR2`). Run the files in order in Oracle SQL Developer, SQL*Plus or Oracle Live SQL:

1. `sql/01_create_tables.sql`
2. `sql/02_insert_data.sql`
3. `sql/03_queries.sql`

## Sample Output

`SELECT * FROM AIRLINE;`

![Airline output](images/output_airline.png)

Join query (passenger, flight, date, seat and fare):

![Join output](images/output_join.png)

## Concepts Used

`CREATE TABLE`, `PRIMARY KEY`, `FOREIGN KEY`, `INSERT`, `SELECT`, `JOIN`

## Report

The full project report is in [`docs/AIRLINE_FLIGHT_DATABASE_MINI_PROJECT.docx`](docs/AIRLINE_FLIGHT_DATABASE_MINI_PROJECT.docx).
