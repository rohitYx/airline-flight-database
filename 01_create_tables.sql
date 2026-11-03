-- Step 1: Create tables (run in this order)
-- Airline Flight Database | Rohit Yadav | UID: 202501100100218

-- TABLE 1: AIRLINE
CREATE TABLE AIRLINE (
    Airline_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Country VARCHAR2(30),
    Phone VARCHAR2(15)
);

-- TABLE 2: AIRCRAFT
CREATE TABLE AIRCRAFT (
    Aircraft_ID NUMBER PRIMARY KEY,
    Model VARCHAR2(30),
    Capacity NUMBER,
    Manufacturer VARCHAR2(30)
);

-- TABLE 3: AIRPORT
CREATE TABLE AIRPORT (
    Airport_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(60),
    Country_Code VARCHAR2(5),
    City VARCHAR2(30)
);

-- TABLE 4: FLIGHT
CREATE TABLE FLIGHT (
    Flight_ID NUMBER PRIMARY KEY,
    Flight_Number VARCHAR2(10),
    Status VARCHAR2(20),
    Airline_ID NUMBER,
    Aircraft_ID NUMBER,
    Source_Airport_ID NUMBER,
    Dest_Airport_ID NUMBER,
    FOREIGN KEY (Airline_ID)
    REFERENCES AIRLINE(Airline_ID),
    FOREIGN KEY (Aircraft_ID)
    REFERENCES AIRCRAFT(Aircraft_ID),
    FOREIGN KEY (Source_Airport_ID)
    REFERENCES AIRPORT(Airport_ID),
    FOREIGN KEY (Dest_Airport_ID)
    REFERENCES AIRPORT(Airport_ID)
);

-- TABLE 5: FLIGHT_SCHEDULE
CREATE TABLE FLIGHT_SCHEDULE (
    Schedule_ID NUMBER PRIMARY KEY,
    Flight_Date DATE,
    Departure_Time VARCHAR2(5),
    Arrival_Time VARCHAR2(5),
    Duration NUMBER,
    Flight_ID NUMBER,
    FOREIGN KEY (Flight_ID)
    REFERENCES FLIGHT(Flight_ID)
);

-- TABLE 6: PASSENGER
CREATE TABLE PASSENGER (
    Passenger_ID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Email VARCHAR2(60),
    Phone VARCHAR2(15)
);

-- TABLE 7: BOOKING
CREATE TABLE BOOKING (
    Booking_ID NUMBER PRIMARY KEY,
    Booking_Date DATE,
    Status VARCHAR2(20),
    Total_Amount NUMBER(10,2),
    Passenger_ID NUMBER,
    FOREIGN KEY (Passenger_ID)
    REFERENCES PASSENGER(Passenger_ID)
);

-- TABLE 8: TICKET
CREATE TABLE TICKET (
    Ticket_ID NUMBER PRIMARY KEY,
    Seat_Number VARCHAR2(5),
    Fare NUMBER(10,2),
    Ticket_Class VARCHAR2(20),
    Booking_ID NUMBER,
    Schedule_ID NUMBER,
    FOREIGN KEY (Booking_ID)
    REFERENCES BOOKING(Booking_ID),
    FOREIGN KEY (Schedule_ID)
    REFERENCES FLIGHT_SCHEDULE(Schedule_ID)
);
