CREATE OR REPLACE PROCEDURE add_flight(
    p_flight_no CHAR(6),
    p_scheduled_departure TIMESTAMPTZ,
    p_scheduled_arrival TIMESTAMPTZ,
    p_departure_airport CHAR(3),
    p_arrival_airport CHAR(3),
    p_status VARCHAR(20),
    p_aircraft_code CHAR(3)
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO bookings.flights (flight_no, scheduled_departure, scheduled_arrival, departure_airport, arrival_airport, status, aircraft_code)
    VALUES (p_flight_no, p_scheduled_departure, p_scheduled_arrival, p_departure_airport, p_arrival_airport, p_status, p_aircraft_code);
END;
$$;
