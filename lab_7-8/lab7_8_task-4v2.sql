CREATE OR REPLACE PROCEDURE book_tickets(
    p_flight_id INT,
    p_passenger_id VARCHAR,
    p_passenger_name TEXT,
    p_contact_data JSONB,
    p_seat_no VARCHAR(4),
    p_amount NUMERIC
)
LANGUAGE plpgsql
AS $$
DECLARE
    v_book_ref CHAR(6);
    v_ticket_no CHAR(13);
BEGIN
    BEGIN
        SELECT TO_CHAR(nextval('book_ref_seq'), 'FM000000') INTO v_book_ref;
        
        INSERT INTO bookings.bookings (book_ref, book_date, total_amount)
        VALUES (v_book_ref, NOW(), p_amount);
        
        SELECT get_next_ticket_no() INTO v_ticket_no;
        
        INSERT INTO bookings.tickets (ticket_no, book_ref, passenger_id, passenger_name, contact_data)
        VALUES (v_ticket_no, v_book_ref, p_passenger_id, p_passenger_name, p_contact_data);
        
        INSERT INTO bookings.ticket_flights (ticket_no, flight_id, fare_conditions, amount)
        VALUES (v_ticket_no, p_flight_id, 'Economy', p_amount);
        
        INSERT INTO bookings.boarding_passes (ticket_no, flight_id, boarding_no, seat_no)
        VALUES (v_ticket_no, p_flight_id, 1, p_seat_no);
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE;
    END;
END;
$$;
