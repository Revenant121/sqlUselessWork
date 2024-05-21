CREATE OR REPLACE PROCEDURE book_tickets(
    p_flight_id INT,
    p_passenger_id VARCHAR(20),
    p_passenger_name TEXT,
    p_contact_data JSONB,
    p_seat_nos VARCHAR[]
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_ticket_no CHAR(13);
    v_book_ref CHAR(6);
    v_booking_date TIMESTAMPTZ := NOW();
BEGIN
    BEGIN
        --бронирования
        v_book_ref := SUBSTRING(MD5(RANDOM()::TEXT), 1, 6);
        INSERT INTO bookings.bookings (book_ref, book_date, total_amount) 
        VALUES (v_book_ref, v_booking_date, 0);
        
        FOREACH v_seat_no IN ARRAY p_seat_nos
        LOOP
            v_ticket_no := get_next_ticket_no();
            INSERT INTO bookings.tickets (ticket_no, book_ref, passenger_id, passenger_name, contact_data) 
            VALUES (v_ticket_no, v_book_ref, p_passenger_id, p_passenger_name, p_contact_data);
            INSERT INTO bookings.ticket_flights (ticket_no, flight_id, fare_conditions, amount) 
            VALUES (v_ticket_no, p_flight_id, 'Economy', 0);
            INSERT INTO bookings.boarding_passes (ticket_no, flight_id, boarding_no, seat_no) 
            VALUES (v_ticket_no, p_flight_id, nextval('boarding_no_seq'), v_seat_no);
        END LOOP;

        COMMIT;
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END;
END;
$$;
