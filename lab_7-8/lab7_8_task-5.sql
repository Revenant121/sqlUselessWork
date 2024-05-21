CREATE OR REPLACE FUNCTION get_boarding_pass(
    p_ticket_no CHAR(13),
    p_passenger_name TEXT
)
RETURNS TABLE (
    booking_no CHAR(6),
    ticket_no CHAR(13),
    passenger_id VARCHAR,
    passenger_name TEXT,
    contact_data JSONB,
    flight_no CHAR(6),
    aircraft_code CHAR(3),
    departure_airport CHAR(3),
    scheduled_departure TIMESTAMPTZ,
    arrival_airport CHAR(3),
    scheduled_arrival TIMESTAMPTZ,
    seat_no VARCHAR(4)
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        b.book_ref, t.ticket_no, t.passenger_id, t.passenger_name, t.contact_data,
        f.flight_no, f.aircraft_code, f.departure_airport, f.scheduled_departure,
        f.arrival_airport, f.scheduled_arrival, bp.seat_no
    FROM
        bookings.tickets t
        JOIN bookings.bookings b ON t.book_ref = b.book_ref
        JOIN bookings.ticket_flights tf ON t.ticket_no = tf.ticket_no
        JOIN bookings.flights f ON tf.flight_id = f.flight_id
        JOIN bookings.boarding_passes bp ON tf.ticket_no = bp.ticket_no
    WHERE
        t.ticket_no = p_ticket_no AND t.passenger_name = p_passenger_name;
END;
$$;
