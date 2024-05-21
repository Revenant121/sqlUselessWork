CREATE OR REPLACE FUNCTION get_next_ticket_no() 
RETURNS CHAR(13)
LANGUAGE plpgsql
AS $$
DECLARE
    next_ticket_no CHAR(13);
BEGIN
    SELECT ticket_no
    INTO next_ticket_no
    FROM bookings.tickets
    ORDER BY ticket_no DESC
    LIMIT 1;

    next_ticket_no := next_ticket_no::bigint + 1;
    RETURN next_ticket_no;
END;
$$;
