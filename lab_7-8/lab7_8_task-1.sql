CREATE OR REPLACE PROCEDURE add_aircraft(
    p_aircraft_code CHAR(3),
    p_model JSONB,
    p_range INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO bookings.aircrafts_data (aircraft_code, model, range)
    VALUES (p_aircraft_code, p_model, p_range);
END;
$$;
